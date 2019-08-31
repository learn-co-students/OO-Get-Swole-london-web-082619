# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter_names = ["Steve", "Jim", "Johnny", "Zoe", "Phil"]

gym_names = ["24Fitness", "TheGym", "Gold's", "PlanetFitness", "XtremeFitness"]

10.times do
    Gym.new(gym_names.sample)
end

200.times do
    lifter = Lifter.new(lifter_names.sample, rand(400))
    lifter.new_membership(Gym.all.sample, [20, 50, 90].sample)
end

lifter = Lifter.all.sample

binding.pry
puts "Gains!"