require_relative 'lib/database_connection'
require_relative 'lib/recipe_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipes_directory')

# Perform a SQL query on the database and get the result set.
recipes_repository = RecipeRepository.new
# Print out each record from the result set.


recipes_repository.all.each do |recipe| 
p "#{recipe.id} - Recipe for #{recipe.name}, cooking time in minutes is #{recipe.cooking_time} and it has a rating of #{recipe.rating}"
end

recipes_repository.find(1).each do |recipe| 
  p "#{recipe.id} - Recipe for #{recipe.name}, cooking time in minutes is #{recipe.cooking_time} and it has a rating of #{recipe.rating}"
end


# recipe = recipes_repository.find(1)
# puts recipe.title