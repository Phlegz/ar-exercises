require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store ActiveRecord::Base

end

store = Store.create(name:"Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store = Store.create(name:"Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store = Store.create(name:"gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count
