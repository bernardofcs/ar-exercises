require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store2 = Store.second
@store1.employees.create(first_name: "Michael", last_name: "Scott", hourly_rate: 50)
@store1.employees.create(first_name: "Dwight", last_name: "Schrute", hourly_rate: 40)
@store1.employees.create(first_name: "Jim", last_name: "Halpert", hourly_rate: 70)
@store1.employees.create(first_name: "Pam", last_name: "Beesley", hourly_rate: 55)
@store2.employees.create(first_name: "Stanley", last_name: "Hudson", hourly_rate: 55)
@store2.employees.create(first_name: "Oscar", last_name: "Martinez", hourly_rate: 40)
@store2.employees.create(first_name: "Toby", last_name: "Flenderson", hourly_rate: 60)
@store2.employees.create(first_name: "Andy", last_name: "Bernard", hourly_rate: 40)
