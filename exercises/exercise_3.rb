require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

@store3 = Store.find(3)

@store3.destroy

number_of_stores = Store.count

puts "Number of Stores: #{number_of_stores}"
