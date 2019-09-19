require 'open-uri'
require 'json'

puts 'Emptying ingredients database...'
Ingredient.destroy_all
puts 'Seeding ingredients...'
json = JSON.parse(URI.open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
json['drinks'].each do |i|
  Ingredient.create!(name: i['strIngredient1'])
end
puts 'Seeding of ingredients successfull!'

puts 'Emptying cocktails database...'
Cocktail.destroy_all
puts 'Seeding 3 cocktails...'
Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "Long Island Tea")
Cocktail.create!(name: "Margarita")
puts 'Seeding of 3 cocktails successfull!'
