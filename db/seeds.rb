# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobaredup",
             password_confirmation: "foobaredup",
             admin: true)

13.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "foobaredup"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

20.times do |e|
  dateOfEvent = Faker::Date.between(11.months.ago, Date.today)
  timeOfEvent = Faker::Time.backward(100, :evening)
  venue = "Ballhaus"
  price = Faker::Commerce.price
  title = "Learn to Dance Part #{e+1}"
  maximumParticipants = 20
  minimumParticipants = 10
  participantsMustBring = "Soft dancing slippers, comfortable clothing"
  notes = "Not applicable"
  Event.create!(dateOfEvent: dateOfEvent,
                timeOfEvent: timeOfEvent,
                venue: venue,
                price: price,
                title: title,
                maximumParticipants: maximumParticipants,
                minimumParticipants: minimumParticipants,
                participantsMustBring: participantsMustBring,
                notes: notes)
end
