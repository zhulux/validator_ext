class CcValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.nil?
    return if value.all? { |email| !!(email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i) }
    record.errors[attribute] << (options[:message] || I18n.t('errors.messages.invalid'))
  end
end
