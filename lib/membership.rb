class Membership
  attr_reader :gym, :lifter, :cost

  @@all = []


  ###### Instance methods ######

  def initialize(gym, lifter, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost

    @@all << self
  end


  ###### Class methods ######

  def self.all
    @@all
  end
end
