class Membership

  @@all = []

  attr_accessor :lifter, :cost, :gym
  attr_reader :cost

  def initialize(gym, lifter, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

end
