class Concert < ActiveRecord::Base
    belongs_to :band
    belongs_to :venue

    def hometown_show?
        self.venue.city == self.band.hometown
    end

    def introduction
        "Hello #{self.venue.city}!!!!! We are #{self.band.name} and we're from #{self.band.hometown}"
    end
    
end