# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized)

drinks["drinks"].each do |drink|
  drink["strIngredient1"]
    Ingredient.create(name: "#{drink["strIngredient1"]}")
end

puts 'Finished!'


puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating cocktais...'
cocktails_attributes = [
  {
    name:         'White Russian',
  },
  {
    name:         'Planteur',
  },
  {
    name:         'Cuba libre',
  },
  {
    name:         'Caipirinha',
  },
  {
    name:         'Sex on beach',
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'
