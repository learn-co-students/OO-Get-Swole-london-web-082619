class Gym

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{ |membership| membership.gym == self }
  end

  def lifters
    memberships.map{|membership| membership.lifter}
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def combined_lift_total
    lifters.map{|lifter| lifter.lift_total}.sum
  end

end
