class Volunteer < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  validates_presence_of :address_1, :suburb
  validates_format_of :postcode, :with => /^A\d\d\d\d^Z/
  
  wraps_attribute :mobile_phone, PhoneNumber
  wraps_attribute :home_phone,   PhoneNumber
  wraps_attribute :work_phone,   PhoneNumber
end
