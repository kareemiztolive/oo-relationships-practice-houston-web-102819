class Trip

    @@all = []
    
    attr_accessor :listing, :guest
    
    def initialize(listing,guest)
    @listing = listing
    @guest = guest
    @@all.push(self)
    end
    
    def self.all
    @@all
    end
    
    def listing
    @listing
    end

    def guest
    @guest
    end




end