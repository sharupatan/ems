# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Employee.destroy_all
Position.destroy_all
Project.destroy_all

position1 = Position.create(name: 'Front end', date: '10/12/2023')
position2 = Position.create(name: 'Back end', date: '10/12/2023')
position3 = Position.create(name: 'Full stack', date: '10/12/2023')
position4 = Position.create(name: 'quality engineer', date: '10/12/2023')
position5 = Position.create(name: 'testing', date: '10/12/2023')

employee1 = position1.employees.create(name: 'sharu', gender: 'male', contact_number: '9014861210', email: 'sharu@gmail.com', address: 'srikalahasthi')
employee2 = position2.employees.create(name: 'imran', gender: 'male', contact_number: '9014861211', email: 'imran@gmail.com', address: 'srikalahasthi')
employee3 = position3.employees.create(name: 'salman', gender: 'male', contact_number: '9014861212', email: 'salman@gmail.com', address: 'mumbai')
employee4 = position4.employees.create(name: 'ameer', gender: 'male', contact_number: '9014861213', email: 'ameer@gmail.com', address: 'mumbai')
employee5 = position5.employees.create(name: 'abhishek', gender: 'male', contact_number: '9014861214', email: 'abhishek@gmail.com', address: 'srikalahasthi')

project1 = Project.create(name: 'Swiggy clone', status: 'todo')
project2 = Project.create(name: 'Zomato clone', status: 'todo')
project3 = Project.create(name: 'Google clone', status: 'todo')
project4 = Project.create(name: 'Amazon clone', status: 'todo')
project5 = Project.create(name: 'Facebook clone', status: 'todo')

