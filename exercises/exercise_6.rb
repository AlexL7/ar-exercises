require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200

end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 65)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Sarah", last_name: "Turner", hourly_rate: 60)
@store1.employees.create(first_name: "Matt", last_name: "Murdock", hourly_rate: 55)

@store2.employees.create(first_name: "Jane", last_name: "Nickles", hourly_rate: 70)
@store2.employees.create(first_name: "Kevin", last_name: "James", hourly_rate: 52)
@store2.employees.create(first_name: "Nick", last_name: "Wauner", hourly_rate: 76)
@store2.employees.create(first_name: "Bill", last_name: "Hauns", hourly_rate: 48)