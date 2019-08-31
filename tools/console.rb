# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

names = ["Angus", "Steve", "Bianca", "Matt", "Mike", "Paula"]
lift_totals = [200, 232, 350, 123, 300, 254, 267]

gyms = ["Pump Fitness", "Do You Even?", "The Ironmonger", "How Fat Are You?", "Weightbusters", "Mass Movers"]
costs = [22, 25, 50, 80, 30, 45]

# Gyms are created correctly?
gym1 = Gym.new(gyms.sample())
gym2 = Gym.new(gyms.sample())
gym3 = Gym.new(gyms.sample())
#binding.pry

# Lifters are created correctly?
lifter1 = Lifter.new(names.sample(), 200)
lifter2 = Lifter.new(names.sample(), 200)
lifter3 = Lifter.new(names.sample(), 200)
#binding.pry

# Memberships are created correctly?
lifter1.join_gym(gym1, costs.sample())
lifter2.join_gym(gym1, costs.sample())
lifter3.join_gym(gym2, costs.sample())
#binding.pry

# memberships() returns all memberships lifter has
# gyms() returns all gyms lifter is part of?
# total_membership_cost() returns total cost of all lifter's gym memberships?
lifter1.join_gym(gym2, costs.sample())
lifter1.join_gym(gym3, costs.sample())
binding.pry

puts "Gains!"
