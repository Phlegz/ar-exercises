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

puts "Which store?"
answer = gets.chomp
query = Store.where name: answer
puts query

new_store = Store.create name: answer, mens_apparel: true, annual_revenue: 10
# puts new_store.errors.messages
