class Gym
    # has many memberships
    # has many lifters through memberships
    attr_reader :name
    
       @@all = []

    def initialize(name)
        @name = name

       @@all << self
    
    end

    def self.all
        @@all
    end
   
    def memberships
        Membership.all.select {|m| m.gym == self}
    end

    def lifters
        memberships.map {|m| m.lifter}
    end
     
    def lifter_names
        lifters.map {|l| l.name }
      end
    
      def lift_sum
        lifters.sum {|l|l.lift_total}
    end
end