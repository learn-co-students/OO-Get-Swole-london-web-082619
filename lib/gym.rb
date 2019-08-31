class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select {|memberships| memberships.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter}
  end

  def lifter_names
    lifters.map {|lifter| lifter.name}
  end

  def combined_lift_total
    lifters.sum {|lifter| lifter.lift_total}
  end

  def self.all
    @@all
  end
end
