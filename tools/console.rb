# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new('Abdullah', 300)
l2 = Lifter.new('Joe' , 200)
l3 = Lifter.new('Matt', 100)

g1 = Gym.new('PureGym')
g2 = Gym.new('MuscleUp')
g3 = Gym.new('FirstOne')

m1 = Membership.new(g1, l1, 40)
m2 = Membership.new(g2, l1, 30)
m3 = Membership.new(g3, l2, 40)

#puts Lifter.all
#puts l1.memberships
#puts l1.gyms
#puts Lifter.average_lift_total
#puts l1.total_gym_cost
#puts g1.memberships
#puts g1.lifter_names
puts g1.lift_total

binding.pry

puts "Gains!"
