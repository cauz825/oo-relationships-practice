class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        trips = Trip.all.select do |trip|
            trip.guest == self
        end
        trips.map do |trip|
            trip.listing.name
        end
    end

    def trips
        trips = Trip.all.select do |trip|
            if trip.guest == self
                trip
            end
        end
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end


end