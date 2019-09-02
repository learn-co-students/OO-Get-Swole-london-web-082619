# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here. small ones first


 g1 = Gym.new("PureGym")
 g2 = Gym.new("MuscleUp")
 g3 = Gym.new("HorrorSpace")

 l1 = Lifter.new("Aaron", 300)
 l2 = Lifter.new("Jo", 500)
 l3 = Lifter.new("Matt", 100)

 =begin
 m1 = Membership.new(g1, l1, 40)
 m2 = Membership.new(g2, l2, 40)
 m3 = Membership.new(g3, l2, 40)
=end

binding.pry

puts "Gains"
