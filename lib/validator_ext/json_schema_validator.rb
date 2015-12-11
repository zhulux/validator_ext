class JsonSchemaValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    schema = JSON.parse(File.read Rails.root.join('app', 'models', 'schemas', "#{options[:with].underscore}.json"))
    begin
      JSON::Validator.validate!(schema, value)
    rescue JSON::Schema::ValidationError
      record.errors.add attribute, $!.message
    end
  end
end