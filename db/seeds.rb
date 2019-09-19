require 'open-uri'
require 'json'

puts 'Emptying database...'
Ingredient.destroy_all
puts 'Seeding ingredients...'
json = JSON.parse(URI.open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
json['drinks'].each do |i|
  Ingredient.create!(name: i['strIngredient1'])
end
puts 'Seeding successfull!'

