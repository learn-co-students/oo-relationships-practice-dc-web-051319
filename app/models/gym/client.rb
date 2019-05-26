class Client
    @@all = []
    
    attr_accessor :name, :trainer

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end

end
