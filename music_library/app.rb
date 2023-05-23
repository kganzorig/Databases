require_relative 'lib/database_connection'
require_relative 'lib/artist_repository'
require_relative 'lib/album_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Perform a SQL query on the database and get the result set.
artist_repository = ArtistRepository.new
album_repository = AlbumRepository.new
# Print out each record from the result set .
artist_repository.all.each do |artist| 
  p "this it the name of the artist #{artist.name}, this is the genre #{artist.genre}"
end 
album_repository.all.each do |album|
  p "this it the title of the album #{album.title}, this is the release_year #{album.release_year} and this is the artist id #{album.artist_id}"
end

