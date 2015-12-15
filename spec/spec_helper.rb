# # $LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
# # require 'validator_ext'
ENV["RAILS_ENV"] ||= 'test'

require 'active_model'
require 'active_model/validations'
require 'active_record'
require 'validator_ext'

ActiveRecord::Base.establish_connection({:adapter => 'sqlite3', :database => 'memory'})
ActiveRecord::Migration.verbose = false
ActiveRecord::Schema.define(:version => 1) do
  create_table :mocked_users, :force => true do |t|
    t.string :telephone
    t.string :email
    t.string :mail_cc
  end
end

