
class Guest

    @@all = []
    
    attr_accessor :name
    
    def initialize(name)
    @name = name
    @@all.push(self)
    
    end
    
    def self.all
    @@all
    end

    def listings
        result = []
        Trip.all.each do |trip|
            if (trip.guest == self)
                result.push(trip.listing)
            end
        end
        return result
    end
    
    def trips
        Trip.all.select do |trip|
             trip.guest == self
        end
    end
    
    def trip_count
         self.trips.length
    end
    
    def self.pro_traveller
        result = []
        Guest.all.each do |guest|
            if guest.trips.length > 1
             result.push(guest)
            end
        end
        return result
    end

    def self.find_by_name(name)
        result = []
        Guest.all.each do |guest|
            if guest.name  == name
             result.push(guest)
            end
        end
        return result
    end





end







