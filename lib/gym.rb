class Gym
  attr_reader :name

  @@all = []


  ###### Instance methods ######

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships()
    Membership.all.select { | memshp | memshp.gym == self }
  end

  def lifters()
    self.memberships().map { | memship | memship.lifter }
  end

  def lifter_names()
    self.members().map { | lifter | lifter.name }
  end

  def lift_total()
    self.lifters().reduce(0) { | memo, lifter | memo + lifter.lift_total }
  end


  ###### Class methods ######

  def self.all()
    @@all
  end

end
