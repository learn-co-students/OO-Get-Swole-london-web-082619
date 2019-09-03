class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    
  end

  def memberships
    Membership.all.select{|memberships| memberships.gym == self}
  end

  def lifters
    memberships.map{|memberships| memberships.lifter}
  end

  def lifter_names
    lifters.map{|lifters| lifters.name}
  end

  def lift_total
    lifters.sum{|lifter| lifter.lift_total}
  end


  def self.all
    @@all
  end

end
