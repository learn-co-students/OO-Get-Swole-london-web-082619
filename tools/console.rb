# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gyms = ["ABC", "BDH", "JKI", 'IHN', 'VIH']
lifter = ["Harry", "George", "Guy", "Sven", "Julius"]
lift_total = [50, 100, 150, 200, 250, 300, 350]
cost = [50, 80, 100, 180, 200]

gym1 = Gym.new(gyms.sample)
gym2 = Gym.new(gyms.sample)
gym3 = Gym.new(gyms.sample)
gym4 = Gym.new(gyms.sample)
gym5 = Gym.new(gyms.sample)

lifter1 = Lifter.new(lifter.sample, lift_total.sample)
lifter2 = Lifter.new(lifter.sample, lift_total.sample)
lifter3 = Lifter.new(lifter.sample, lift_total.sample)
lifter4 = Lifter.new(lifter.sample, lift_total.sample)
lifter5 = Lifter.new(lifter.sample, lift_total.sample)


membership1 = Membership.new(gym1, lifter2, cost.sample)
membership2 = Membership.new(gym2, lifter5, cost.sample)
membership3 = Membership.new(gym1, lifter3, cost.sample)
membership4 = Membership.new(gym5, lifter2, cost.sample)
membership5 = Membership.new(gym3, lifter2, cost.sample)
membership6 = Membership.new(gym2, lifter1, cost.sample)
membership7 = Membership.new(gym4, lifter4, cost.sample)
membership8 = Membership.new(gym3, lifter3, cost.sample)
membership9 = Membership.new(gym1, lifter4, cost.sample)

binding.pry

puts "Gains!"
