class Gym

  @@all = [] 
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all 
  end 

  def memberships #gets all memberships at a specific gym
    Membership.all.select{|membership| membership.gym == self}
  end 

  def specific_lifters 
    memberships.map{|membership| membership.lifter}
  end 

  def specific_names 
    specific_lifters.map{|membership| membership.name}
  end 

  def combined_lift
    specific_lifters.sum{|membership| membership.lift_total}
  end 


end
