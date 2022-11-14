require "faker"

puts "🌱 Seeding spices..."

puts "Destroying  Owner...."

Owner.destroy_all 
Rental.destroy_all



puts "Destroying Rental..."
# Seed your database here

10.times do
owner= Owner.create(
name: Faker::Name.first_name,
email: Faker::Internet.email,
tel: Faker::PhoneNumber.cell_phone_in_e164,
password: Faker::Internet.password(min_length: 8)
)



2.times do 
rental=Rental.create(
name: Faker::Company.name,
description: Faker::Lorem.paragraph(sentence_count:3),
image: "https://loremflickr.com/#{rand(200..340)}/#{rand(200..340)}/homes",
location: Faker::Address.full_address,
price: Faker::Commerce.price,
available: true,
owner_id: owner.id)

  end
end



puts "✅ Done seeding!"