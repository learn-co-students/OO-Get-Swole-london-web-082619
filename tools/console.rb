# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#initialize sample lifters
sam = Lifter.new("Sam", 125)
john = Lifter.new("John", 200)
lisa = Lifter.new("Lisa", 300)
tom = Lifter.new("Tom", 50)
rachel = Lifter.new("Rachel", 30)

#initialize sample gyms
rebel = Gym.new("1Rebel")
mos = Gym.new("Ministry of Sound Fitness")
un1t = Gym.new("UN1T")

#give each lifter a membership
Lifter.all.each { |lifter| Membership.new(lifter, Gym.all.sample, rand(25..200)) }

binding.pry

puts "Gains!"
