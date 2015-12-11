class ArrayInclusionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.all? { |g| options[:in].include?(g) }
      record.errors[attribute] << (options[:message] || I18n.t('errors.messages.invalid'))
    end
  end
end