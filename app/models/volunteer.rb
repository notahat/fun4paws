class Volunteer < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  wraps_attribute :email_address, EmailAddress
  validates_presence_of :address_1, :suburb
  validates_format_of :postcode, :with => /\A\d\d\d\d\Z/
  wraps_attribute :mobile_phone, PhoneNumber, :allow_blank => true
  wraps_attribute :home_phone,   PhoneNumber, :allow_blank => true
  wraps_attribute :work_phone,   PhoneNumber, :allow_blank => true
  validate :must_have_at_least_one_phone_number
  
  def must_have_at_least_one_phone_number
    if mobile_phone.blank? && home_phone.blank? && work_phone.blank?
      errors.add_to_base("You must provide at least one of mobile phone, home phone, or work phone")
    end
  end
end
