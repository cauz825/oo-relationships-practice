require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

seattle_listing = Listing.new("trip1", "Seattle")
portland_listing = Listing.new("trip2", "Portland")
michael = Guest.new("Michael")
zara = Guest.new("Zara")
steve = Guest.new("Steve")
seattle_trip_michael = Trip.new(seattle_listing, michael)
portland_trip_zara = Trip.new(portland_listing, zara)
seattle_trip_steve = Trip.new(seattle_listing, steve)
portland_trip_michael = Trip.new(portland_listing, michael)

# Listing.most_popular

michael.listings

binding.pry
0