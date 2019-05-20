class Trainer
     
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    
    def self.get_client_count
        Client.all.each_with_object(client_count = {}) do |client| 
            unless client_count.key?(client.trainer)
                client_count[client.trainer] = 1
            else
                client_count[client.trainer] += 1
            end
        end
    end

    def self.most_clients
        self.get_client_count.sort_by{ |trainer, count| count }.pop[0]
    end

    def clients
        Client.all.select{ |client| client.trainer == self }
    end
end
