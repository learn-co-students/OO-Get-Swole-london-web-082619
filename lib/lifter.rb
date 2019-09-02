class Lifter
  
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total) #Lifter.new(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #Get a list of all lifters
  def self.all
    @@all
  end

  #Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select{ |membership| membership.lifter == self }
  end

  #Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    self.memberships.collect{ |membership| membership.gym }
  end

  #Get the average lift total of all lifters
  def self.average_lift
    average = @@all.collect{ |lifter| lifter.lift_total }.sum / @@all.length
  end

  #Get the total cost of a specific lifter's gym memberships
  def membership_cost
    self.memberships.collect{ |membership| membership.cost }.sum
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def sign_up(gym, membership_cost)
    Membership.new(self, gym, membership_cost)
  end

end
