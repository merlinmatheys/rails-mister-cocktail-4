require 'json'
require 'open-uri'
Cocktail.destroy_all
Ingredient.destroy_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocks_serialized = open(url).read
cocks = JSON.parse(cocks_serialized)
cocks["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end
