class Membership

  @@all = []
  attr_reader :cost
  attr_accessor :gym, :lifter

  def initialize(gym, lifter, cost)
    @cost = cost
    @gym = gym 
    @lifter = lifter
    @@all << self 
  end

  def self.all 
    @@all 
  end 

end
