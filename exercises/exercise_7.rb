require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"



#2.Much like with the contact app (except not in a loop), Ask the user for a store name (store it in a variable)
#3.Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
#4.Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

puts "Please type a store name"
typed_store = gets.chomp.to_s


@new_store = Store.create(name: typed_store)

  if @new_store.errors.any?
      @new_store.errors.each do |attribute, message|
        puts "#{attribute} = #{message}"
      end
  end




