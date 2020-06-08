require 'pry'

class Listing

    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        trips = Trip.all.select do |trip|
            trip.listing == self
        end
        trips.map do |trip|
            trip.guest.name
        end
    end

    def trips
        Trip.all.select do |trip|
            if trip.listing == self
                trip
            end
        end
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
            all_listing = Trip.all.map do |trip|
                trip.listing
            end
            all_listing.max_by do |listing|
                all_listing.count(listing)
            end
        end
    end

