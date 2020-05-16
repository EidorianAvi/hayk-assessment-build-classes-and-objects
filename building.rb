class Building
    attr_accessor :name, :number_of_tenants
    attr_reader :address
    
    
    @@all = []


    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants

        @@all << self
    end

    def placard
        "#{self.name} - #{self.address}"
    end

    def tenants_per_floor
        @number_of_tenants/@number_of_floors
    end

    def self.tenants_average
       total = 0
        @@all.each do |building|
          total +=  building.number_of_tenants 
        end
      average = total / @@all.count
    end

    def self.all
        @@all
    end

end