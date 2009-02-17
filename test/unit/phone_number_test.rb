require 'test_helper'

class PhoneNumberTest < ActiveSupport::TestCase
  
  should "handle a Victorian local phone number" do
    phone_number = PhoneNumber.new("9123 4567")
    assert phone_number.valid?
    assert_equal "61391234567", phone_number.normalize
  end
  
  should "handle a number with an area code" do
    phone_number = PhoneNumber.new("(05) 9123 4567")
    assert phone_number.valid?
    assert_equal "61591234567", phone_number.normalize
  end
  
  should "handle a mobile number" do
    phone_number = PhoneNumber.new("0412 345 678")
    assert phone_number.valid?
    assert_equal "61412345678", phone_number.normalize
  end
  
end
