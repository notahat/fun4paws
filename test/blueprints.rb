require 'faker'

Sham.define do
  first_name    { Faker::Name.first_name }
  last_name     { Faker::Name.last_name }
  email_address { Faker::Internet.email }
  address       { Faker::Address.street_address }
  suburb        { Faker::Address.city }
  postcode      { Faker.numerify('####') }
  mobile_phone  { Faker.numerify('04## ### ###') }
end

Volunteer.blueprint do
  first_name    { Sham.first_name }
  last_name     { Sham.last_name }
  email_address { Sham.email_address }
  address_1     { Sham.address }
  suburb        { Sham.suburb }
  postcode      { Sham.postcode }
  mobile_phone  { Sham.mobile_phone }
end
