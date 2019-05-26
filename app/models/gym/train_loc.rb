class Train_Loc

    attr_accessor :trainer, :location

    @@all = []

    def initialize(trainer, location)
        @trainer = trainer
        @location = location
        @@all << self
    end

    def self.all
        @@all 
    end

end
