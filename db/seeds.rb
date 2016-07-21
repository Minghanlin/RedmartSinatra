require './models/user'
require 'Faker'

(0..10).each do |i|
  User.create(
  name: Faker::Name.name,
  nationality: Faker::Address.country,
  cc_number: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address,
  email_address: Faker::Internet.email
  )
end


#User.new
#@new_user = User.new
#@new_user[:name] = 'Prima'


#User.create
