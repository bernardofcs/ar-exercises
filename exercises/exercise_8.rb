require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'
@store1 = Store.first
output = @store1.employees.create(first_name: 'Robert', last_name: 'California', hourly_rate: 180)
puts output.password
