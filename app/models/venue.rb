class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)
        self.concerts.find_by(date: date)
    end

    def most_frequent_band 
        self.bands.max{|a,b| b.id <=> a.id}
    end
end