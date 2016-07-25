require './models/user'
require './models/product'
require 'faker'

(0..10).each do |i|
  User.create(
  name: Faker::Name.name,
  nationality: Faker::Address.country,
  cc_number: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address,
  email_address: Faker::Internet.email
  )
end


(0..10).each do |i|
  Product.create(
  name: Faker::Name.name,
  category: Faker::Commerce.department,
  price: Faker::Commerce.price
  )
end
