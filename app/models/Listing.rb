class Listing
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(name)
        self.all.select {|listing| listing.name == name}
    end

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end
    

end
