class Gym
  attr_reader :name

  @@all = []

  ###### Instance methods ######

  #Works!
  def initialize(name)
    @name = name
    @@all << self
  end

  #Works!
  def memberships()
    Membership.all.select { | memshp | memshp.gym == self }
  end

  #Works!
  def lifters()
    self.memberships().map { | memship | memship.lifter }
  end

  #Works!
  def lifter_names()
    self.lifters().map { | lifter | lifter.name }
  end

  #Works!
  def lift_total()
    self.lifters().reduce(0) { | memo, lifter | memo + lifter.lift_total }
  end


  ###### Class methods ######

  #Works!
  def self.all()
    @@all
  end

end
