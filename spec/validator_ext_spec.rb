require 'spec_helper'

describe ValidatorExt do
  before(:all) do
    TEST_ARR = %w(a b c)
    class MockedUser < ActiveRecord::Base
      attr_accessor :arr
      validates :email, email: true
      validates :telephone, telephone: true
      validates :arr, array_inclusion: TEST_ARR
    end
  end

  let(:user) { MockedUser.new }

  it 'validate email should work' do
    expect(user).to be_valid
    user.email = 'xxx@x'
    expect(user).not_to be_valid
    user.email = 'test@xxx.com'
    expect(user).to be_valid
  end

  it 'validate telephone should work' do
    expect(user).to be_valid
    user.telephone = '8888'
    expect(user).not_to be_valid
    user.telephone = '13888888888'
    expect(user).to be_valid
  end

  it 'validate array_inclusion should work' do
    expect(user).to be_valid
    user.arr = ['a', 'b', 'd']
    expect(user).not_to be_valid
    user.arr = ['a', 'b', 'c']
    expect(user).to be_valid
  end
end
