class Gym
  attr_reader :name, :cost

  @@all = []

  def initialize(name, cost)
    @name = name
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

  def cost
    @cost
  end

  def memberships
    #Get a list of all memberships at a specific gym
    Membership.all.select{|mem_ins| mem_ins.gym == self}
  end


  def members
    #Get a list of all the lifters that have a membership to a specific g
    memberships.map {|m| m.member}
  end

  def member_names
    #Get a list of the names of all lifters that have a membership to that gym
    memberships.map {|m| m.member.name}
  end

  def gym_lift_total
    #Get the combined lift total of every lifter has a membership to that gym
    combined_total = 0
    members.each {|m| combined_total += m.lift_total}
    combined_total
  end

end
