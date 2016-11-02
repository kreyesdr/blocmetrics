require 'faker'

# My User

custom_user = User.create!(
    email: 'kreyes@blocmetrics.com',
    password: 'AAbb11',
    password_confirmation: 'AAbb11'
)

custom_user.save!

# Create User

10.times do
  User.create!(
      email: Faker::Internet.email,
      password: 'AAbb11',
      password_confirmation: 'AAbb11'
  )
end

users = User.all

# Create applications

20.times do
  Application.create!(
      user: users.sample,
      name: Faker::App.name,
      description: Faker::Lorem.sentence,
      url: Faker::Internet.url

  )
end

apps = Application.all

250.times do
  Event.create!(
      name: Faker::Pokemon.name,
      application: apps.sample
  )
end

puts "Seed finished"
puts "#{custom_user.email} user has been created"
puts "#{User.count} Users created"
puts "#{Application.count} Applications created"
puts "#{Event.count} Events created"