class Lifter
  attr_reader :name, :lift_total

  @@all = []

  ###### Instance methods ######

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
  end

  def join_gym(gym, cost)
    Membership.new(gym, self, cost)
  end

  def memberships()
    Membership.all.select { | memshp | memshp.lifter == self }
  end

  def gyms()
    self.memberships().map { | memshp | memshp.gym }
  end

  def total_membership_cost
    self.memberships().reduce(0) { | memo, memshp | memo + memshp.cost }
  end


  ###### Class methods ######

  def self.all
    @@all
  end

  def self.average_lift()
    lifts = @@all.map { | lifter | lifter.lift_total }
    lift_total.to_f() / lifts.length
  end
end
