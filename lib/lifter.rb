class Lifter
  attr_reader :name, :lift_total, :lifter
@@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|memberships| memberships.lifter == self}
  end

  def gyms
    self.memberships.map{|memberships| memberships.gym}
  end

  def self.average_lift
    @@all.sum{|lifter| lifter.lift_total}/@@all.length
  end

  def total_cost
    self.memberships.sum{|membership| membership.cost}
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
