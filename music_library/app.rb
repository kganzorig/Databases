require_relative 'lib/database_connection'
require_relative 'lib/artist_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Perform a SQL query on the database and get the result set.
artist_repository = ArtistRepository.new
# Print out each record from the result set .
artist_repository.all.each do |artist| 
  p "this it the name of the artist #{artist.name}, this is the genre #{artist.genre}"

end 