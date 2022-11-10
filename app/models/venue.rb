class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)
        self.concerts.find_by(date: date)
    end

    def most_frequent_band 
        this_venue = self.id
        def count_concerts(band, venue_id)
            band.concerts.filter{|concert| concert.venue_id == venue_id}
        end
        Band.all.max {|band1,band2| count_concerts(band1,this_venue) <=> count_concerts(band2,this_venue)}
    end
end