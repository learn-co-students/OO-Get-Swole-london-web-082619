class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all()
    @@all
  end

  def memberships()
    Membership.all.select { | memship | memship.gym == self}
  end

  def lifters()
    self.memberships().map { | memship | memship.lifter }
  end

  def lifter_names()
    self.lifters().map { | lifter | lifter.name }
  end

  def lift_total()
    self.lifters().reduce(0) { | memo, lifter | memo + lifter.lift_total }
  end





end
