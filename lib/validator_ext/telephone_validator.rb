class TelephoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.nil?
    return if value =~ /\A(0|86|17951)?[0-9]{11}\z/i
    record.errors[attribute] << (options[:message] || I18n.t('errors.messages.invalid'))
  end
end
