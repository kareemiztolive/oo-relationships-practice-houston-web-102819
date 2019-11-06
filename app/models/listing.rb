class Listing

    @@all = []
    
    attr_accessor :city
    
    def initialize(city)
    @city = city
    @@all.push(self)
    
    end
    
    def self.all
    @@all
    end
    
    def guests
        result = []
        Trip.all.each do |trip|
            if(trip.listing == self)
                result.push(trip.guest)
            end 
        end 
        return result
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        self.trips.length
    end

    def self.find_all_by_city(city)
        result = []
        Listing.all.each do |listing|
            if(listing.city == city)
            result.push(listing)
            end
        end
        return result
    end

   def self.most_popular
        previous_record = 0
        most_popular_listing = nil
        Listing.all.each do |listing|
            if listing.trips.length > previous_record
                previous_record = listing.trips.length
                most_popular_listing = listing
            end
        end
        most_popular_listing
   end

    
end