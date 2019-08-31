# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("PureGym")
gym2 = Gym.new("Fit Space")
gym3 = Gym.new("Virgin Active")

lifter1 = Lifter.new("Matt", 30)
lifter2 = Lifter.new("Mike", 35)
lifter3 = Lifter.new("Angus", 420)
lifter4 = Lifter.new("Arnold Schwarzenegger", 226)
lifter5 = Lifter.new("Queen Elizabeth", 6)

memb1 = lifter1.sign_up(gym1, 15.99)
memb2 = lifter2.sign_up(gym1, 17.99)
memb3 = lifter3.sign_up(gym1, 17.99)
memb4 = lifter4.sign_up(gym2, 34.99)
memb5 = lifter5.sign_up(gym3, 99.99)
memb6 = lifter5.sign_up(gym2, 89.99)
memb7 = lifter2.sign_up(gym3, 11.99)



binding.pry

puts "Gains!"
