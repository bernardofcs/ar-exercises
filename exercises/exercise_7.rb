require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Type the name of a store: "
store = gets.chomp
store = Store.new
store.valid? # => false
store.errors.messages.each do |message|
  puts "--------"  
  puts message
end


