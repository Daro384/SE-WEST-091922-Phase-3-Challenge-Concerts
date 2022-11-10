class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue, date)
        self.concerts.create(date: date, venue: venue,  band: self)
    end

    def all_introductions
        self.concerts.map {|concert| concert.introduction}
    end

    def self.most_performances
        self.all.max{|a,b| a.venues.count <=> b.venues.count}
    end
end