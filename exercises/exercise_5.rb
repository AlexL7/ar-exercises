require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


@total_revenue = Store.sum("annual_revenue")
@number_of_stores = Store.count
@successful_stores = Store.where("annual_revenue > ?", 1000000).count


puts "Total Revenue: #{@total_revenue}"
puts "Average Revenue per store : #{@total_revenue/@number_of_stores}"
puts "Stores with more than 1M revenue: #{@successful_stores}"