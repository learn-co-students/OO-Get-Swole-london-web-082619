class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym
  @@all = []

  def initialize(lifter, gym, cost) #Membership.new(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end

  #Get a list of all memberships
  def self.all
    @@all
  end

end
