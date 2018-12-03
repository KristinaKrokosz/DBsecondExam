# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
15.times do
    Administration.create!(firstname:Faker::Name.first_name, lastname:Faker::Name.last_name, title:Faker::Job.title, extension:Faker::Number.number(4))
end

15.times do
    Committee.create!(committeeID:Faker::Number.number(6), comitname:Faker::Team.name, facultyID:Faker::Number.number(6), meetday:Faker::Date.forward(6) )
end 

15.times do
    Faculty.create!(facultyID:Faker::Number.number(6), fName:Faker::Name.first_name, lName:Faker::Name.last_name, department:Faker::Job.field, email:Faker::SiliconValley.email)
end 
