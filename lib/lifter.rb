class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select {|memberships| memberships.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.average_lift_total
    @@all.sum {|lifter| lifter.lift_total}.to_f / @@all.length
  end

  def membership_costs
    memberships.sum {|membership| membership.cost}.round(2)
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

  def self.all
    @@all
  end
end
