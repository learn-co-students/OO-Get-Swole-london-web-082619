class Membership
  attr_reader :gym, :member, :cost

  @@all = []

  def initialize(gym, member, cost)
    @gym = gym
    @member = member
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end


end
