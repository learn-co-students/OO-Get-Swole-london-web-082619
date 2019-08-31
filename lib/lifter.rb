class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Memberships.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}
  end

  def self.average_lift
    lift_totals = self.all.map{ |lifter| lifter.lift_total }
    lift_totals.sum / self.all.length
  end

  def total_membership_cost
    memberships.map{ |membership| membership.cost }.sum
  end

  def new_membership(gym, cost)
    Membership.new(gym, self, cost)
  end

end
