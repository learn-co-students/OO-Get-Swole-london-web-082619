class Membership
  #belongs to a gym
  #benlos to a lifter
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(gym, lifter, cost)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end
end
