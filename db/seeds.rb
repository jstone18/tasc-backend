# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(first_name: "Jessica", last_name: "Miller", age: 5, room_id: 1)
Student.create(first_name: "Chloe", last_name: "Brown", age: 9, room_id: 4)
Student.create(first_name: "Sophie", last_name: "Johnson", age: 7, room_id: 3)
Student.create(first_name: "Emily", last_name: "Martinez", age: 8, room_id: 4)
Student.create(first_name: "Olivia", last_name: "Davis", age: 6, room_id: 2)
Student.create(first_name: "Jack", last_name: "Williams", age: 5, room_id: 1)
Student.create(first_name: "James", last_name: "Smith", age: 7, room_id: 2)
Student.create(first_name: "Daniel", last_name: "Jones", age: 8, room_id: 3)
Student.create(first_name: "Ethan", last_name: "Taylor", age: 10, room_id: 5)
Student.create(first_name: "Joseph", last_name: "White", age: 11, room_id: 5)

Room.create(title: "Yellow Room")
Room.create(title: "Blue Room")
Room.create(title: "Red Room")
Room.create(title: "Green Room")
Room.create(title: "Orange Room")