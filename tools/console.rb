require_relative '../config/environment.rb'
# Artist
yuriy = Artist.new("Yuriy",12)
muna = Artist.new("Muna",8)
stephen = Artist.new("Stephen",15)

#gallery
tate_modern = Gallery.new("Tate Modern","London")
flat_iron = Gallery.new("FlatIron","Dumbo")
moma = Gallery.new("Moma","Manhattan")

# Painting
mona_lisa = Painting.new("Mona Lisa",5, muna, flat_iron)
sunflowers = Painting.new("Sunflowers",10, yuriy, tate_modern)
starry_night = Painting.new("Starry Night",500, stephen, tate_modern)
the_scream = Painting.new("The Scream",400, muna, tate_modern)
untitled_1 = Painting.new("Untitled 1",400, muna, tate_modern)


binding.pry

puts "Bob Ross rules."
