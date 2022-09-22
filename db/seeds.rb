# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy all objects
p 'Destroying objects from DB'
User.destroy_all
Category.destroy_all
Task.destroy_all

# Create user
p 'Creating user'
User.create!(email: 'leith.atia@gmail.com',
             password: 'password',
             username: 'Leith')
