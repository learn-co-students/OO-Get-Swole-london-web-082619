class Membership
  # belongs to a gym
  # belongs to a lifter
  attr_reader :cost, :gym, :lifter
  
  @@all = []

  def initialize(gym, lifter, cost)
    @cost = cost
    @gym = gym
    @lifter = lifter
    self.class.all << self
  end

  def self.all
    @@all
  end
  
end

  