class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @lifter = lifter
    @cost = cost
    @gym = gym

    @@all << self
  end

  def self.all
    @@all
  end




end
