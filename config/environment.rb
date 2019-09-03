require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

lifter1 = Lifter.new("Chuck", 50)
lifter2 = Lifter.new("Dom", 100)
lifter3 = Lifter.new("Adam", 150)
lifter4 = Lifter.new("Lewis", 200)

gym1 = Gym.new("PureGym")
gym2 = Gym.new("Big Gym")
gym3 = Gym.new("THE Gym")
gym4 = Gym.new("Swole Gym")

m1 = Membership.new(lifter1, gym1, 200)
m2 = Membership.new(lifter1, gym2, 150)
m3 = Membership.new(lifter2, gym1, 175)
m4 = Membership.new(lifter3, gym3, 250)


binding.pry
puts "Gains!"
