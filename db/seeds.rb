# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Wiping DB....'
Task.destroy_all
List.destroy_all
User.destroy_all

puts 'Creating users...'
leith = User.create!(email: 'leith.atia@gmail.com',
                     password: 'password',
                     username: 'Leith')
jim = User.create!(email: 'jim@gmail.com',
                     password: 'password',
                     username: 'Jim')

puts 'Creating tasks...'
personal = leith.lists.create!(name: 'Personal')
work = leith.lists.create!(name: 'Work')

personal.tasks.create!(name: 'Take vitamin', description: 'Take one vitamin in the morning with food')
personal.tasks.create!(name: 'Stretch', description: '10 mins of yoga to stretch')
personal.tasks.create!(name: 'Laundry', description: 'Fold and put away laundry')
personal.tasks.create!(name: 'Repot plant', description: 'Get soil from basement and repot Ivy')
personal.tasks.create!(name: 'Change bulbs', description: 'Change remaining bulbs in hallway')

work.tasks.create!(name: 'Todo app', description: 'Finish this Todo app!')
work.tasks.create!(name: 'Study JS', description: 'Finish the JS course')
work.tasks.create!(name: 'Codewars', description: 'Strengthen Ruby skills with kata on Codewars.com')

puts 'Done!'
