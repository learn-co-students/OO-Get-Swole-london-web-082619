class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all()
    @@all
  end

  def memberships()
    Membership.all.select { | membership | membership.lifter == self}
  end

  def gyms()
    memberships.map { | membership | membership.gym}
  end

  def self.average_lift()
    @@all.sum { | lift | lift.lift_total } / @@all.length
  end

  def total_costs()
    memberships.sum { |gym| gym.cost}
  end

  def self.gym(gym_membership)
    @@all.select { | membership | membership.gym == gym_membership}
  end  

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end





end
