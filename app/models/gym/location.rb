class Location
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trainers
        Train_Loc.all.select do |joiner|
            joiner.location == self
        end.map{ |e| e.trainer }
    end


    def self.least_clients
        least = nil
        self.all.each do |location|
            if least == nil
                least = location
            elsif location.total_clients < least.total_clients
                least = location
            end
        end
        least
    end

    def total_clients
        self.trainers.map do |trainer|
            trainer.clients.length
        end.inject(0){|sum,x| sum + x }
    end

end
