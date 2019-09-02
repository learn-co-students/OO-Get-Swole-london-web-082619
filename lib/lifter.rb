class Lifter
  @@all = [] 
  attr_accessor :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all 
    @@all 
  end 
 
 def memberships #finds the all the memberships that this lifter has
  Membership.all.select{|membership| membership.lifter == self}
 end 

 def specific_gym 
  memberships.map{|membership| membership.gym}
 end 

 def self.average_lift 
  total_sum = @@all.sum{|lifter| lifter.lift_total}.to_f
  num_lifter =  @@all.length # OR @@all.count{|lifter| lifter.name} 
  total_sum / num_lifter 
 end 

 def total_cost
  memberships.sum{|membership| membership.cost}
 end 

 def new_membership(gym, cost) #specific lifter signing up for a new gym
  Membership.new(gym, self, cost)
 end 

end
