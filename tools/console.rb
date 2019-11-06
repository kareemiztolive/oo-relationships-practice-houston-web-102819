require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

houston_listing = Listing.new("houston")

houston_listing2 = Listing.new("houston")

austin_listing = Listing.new("austin")

sam = Guest.new("sam")

john = Guest.new("john")

houston_trip = Trip.new(houston_listing, sam)

houston_trip2 = Trip.new(houston_listing, john)

houston_trip3 = Trip.new(houston_listing2, sam)

# p Trip.all

# p Listing.all

# p Guest.all

# p houston_listing

# p sam

# p houston_trip2

# p houston_listing.guests

# p houston_listing.trips

# p houston_listing.trip_count

# p houston_listing.find_all_by_city("houston")

# p Listing.most_popular

# p Listing.find_all_by_city("houston")

# p sam.listings

# p sam.trips

# p sam.trip_count

# p Guest.pro_traveller

# p Guest.find_by_name("sam")

# p houston_trip.listing

# p houston_trip.guest

p houston_trip2.listing

p houston_trip2.guest

binding.pry
0