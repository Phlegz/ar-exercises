require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: {in: 40..200}
  validates :store_id, presence: true
end

@store1.employees.create first_name: "Bob", last_name: "Cook", hourly_rate: 40
@store1.employees.create first_name: "Mary", last_name: "Blah", hourly_rate: 60
@store1.employees.create first_name: "John", last_name: "Blahhh", hourly_rate: 60
@store2.employees.create first_name: "Sarah", last_name: "BlahBlah", hourly_rate: 60
@store2.employees.create first_name: "James", last_name: "Cooks", hourly_rate: 60
