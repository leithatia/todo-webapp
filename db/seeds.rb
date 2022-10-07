# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Wiping DB....'
User.destroy_all
List.destroy_all
Task.destroy_all

p 'Creating user...'
leith = User.create!(email: 'leith.atia@gmail.com',
                     password: 'password',
                     username: 'Leith')

p 'Creating tasks...'
personal = leith.lists.create!(name: 'Personal')

personal.tasks.create!(name: 'Take vitamin', description: 'Take one vitamin in the morning with food')
