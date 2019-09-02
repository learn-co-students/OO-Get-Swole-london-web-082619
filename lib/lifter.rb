class Lifter
  attr_reader :name, :lift_total

  @@all = []
  @@lift_all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@lift_all << lift_total
    @@all << self
  end

  def self.all
    #Get a list of all lifters
      @@all
  end

  def make_membership(gym)
    #Given a gym [[and a membership cost]; fixed cost for a certain gym assumed], sign a specific lifter up for a new gym
      Membership.new(gym, self, gym.cost)
  end

  def memberships
    #Get a list of all the memberships that a specific lifter has
      Membership.all.select{|m_ins| m_ins.member == self}
  end

  def gyms
    #Get a list of all the gyms that a specific lifter has memberships to
      memberships.map {|m_ins| m_ins.gym}
  end

  def self.lift_all
      @@lift_all
  end

  def self.lift_average
    #Get the average lift total of all lifters
      average = 0
      @@lift_all.each {|x| average += x}
      average / @@lift_all.length
  end

  def cost_memberships
    #Get the total cost of a specific lifter's gym memberships
      cost = 0
      gyms.map {|g| cost += g.cost}
      cost
  end
  

end
