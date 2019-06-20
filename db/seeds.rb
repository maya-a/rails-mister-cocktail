# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

# puts 'starting json'
# serialized_drink = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
# drinks = JSON.parse(serialized_drink)
# drinks['drinks'].each do |drink|
#   Ingredient.create!(name: drink["strIngredient1"])
# end
# puts '3 more'
# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')
# puts 'done'

puts "adding my ingredients"

# Ingredient.create(name: 'Tabasco sauce')
# Ingredient.create(name: 'Prepared horseradish')
# Ingredient.create(name: 'Worcestershire sauce')
# Ingredient.create(name: 'Celery salt')
# Ingredient.create(name: 'Ground black pepper')
# Ingredient.create(name: 'smoked paprika')
# Ingredient.create(name: 'soda')

Ingredient.create(name: 'Ground black pepper')
Ingredient.create(name: 'smoked paprika')


puts "done"
