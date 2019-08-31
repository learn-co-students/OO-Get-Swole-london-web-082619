class Membership
  attr_reader :gym, :lifter, :cost

  @@all = []

  ###### Instance methods ######

  #Works!
  def initialize(gym, lifter, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost

    @@all << self
  end


  ###### Class methods ######

  #Works!
  def self.all
    @@all
  end
end
