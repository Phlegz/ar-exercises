require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :carry_at_least_one_of_the_men_or_women_apparels


  def carry_at_least_one_of_the_men_or_women_apparels
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel,"Stores must carry at least one of the men's or women's apparel")
    end
  end

end

store1 = Store.create name:"Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true
store2 = Store.create name:"Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true
store3 = Store.create name:"gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false
store4 = Store.create name:"gast", annual_revenue: 190000, mens_apparel: false, womens_apparel: false
store5 = Store.create name:"ga", annual_revenue: 190000, mens_apparel: false, womens_apparel: false
# store.errors.messages[:name, "length has to be more than 3 character"]
puts store5.errors.messages

puts Store.count
