class Gym

  # has many memberships
  # has many lifters through membershios

  attr_reader :name
 
  def initialize(name)
    @name = name
   
  end


end
