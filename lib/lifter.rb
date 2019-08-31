class Lifter
  attr_reader :name, :lift_total

  @@all = []

  ###### Instance methods ######

  #Works!
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  #Works!
  def join_gym(gym, cost)
    Membership.new(gym, self, cost)
  end

  #Works!
  def memberships()
    Membership.all.select { | memshp | memshp.lifter == self }
  end

  #Works!
  def gyms()
    self.memberships().map { | memshp | memshp.gym }
  end

  #Works!
  def total_membership_cost
    self.memberships().reduce(0) { | memo, memshp | memo + memshp.cost }
  end


  ###### Class methods ######

  #Works!
  def self.all
    @@all
  end

  #Works!
  def self.average_lift()
    lifts = @@all.reduce(0) { | memo, lifter | memo + lifter.lift_total }
    lifts.to_f() / @@all.length
  end
end
