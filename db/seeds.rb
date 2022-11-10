# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Venue/Band data..."
Venue.destroy_all
Band.destroy_all
puts "trying to delete Concerts"
Concert.destroy_all

puts "Creating Venues..."
la_venue = Venue.create(title: "The Roxy", city: "LA")
chi_venue = Venue.create(title: "Subterranean", city: "Chicago")
nyc_venue = Venue.create(title: "Terminal 5", city: "NYC")

puts "Creating Bands..."
ny_band = Band.create(name: "LCD Soundsystem", hometown: "NYC")
la_band = Band.create(name: "Muna", hometown: "LA")
chi_band = Band.create(name: "Noname", hometown: "Chicago")


puts "Creating Concerts..."
Concert.create(date: "12/05", venue_id: la_venue.id,  band_id: ny_band.id)
Concert.create(date: "11/20", venue: la_venue,  band: la_band)
Concert.create(date: "10/06", venue: chi_venue, band: chi_band)
Concert.create(date: "10/13", venue: chi_venue, band: ny_band)
Concert.create(date: "10/22", venue: nyc_venue, band: la_band)
Concert.create(date: "09/30", venue: nyc_venue, band: chi_band)

puts "Seeding done!"
