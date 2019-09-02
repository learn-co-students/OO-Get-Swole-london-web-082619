# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

ff = Gym.new("Fitness First", 100)
pg = Gym.new("PureGym", 30)
hp = Gym.new("Holmes Place", 60)

=begin
lifter = "Yves, Bapo, Caspar, Nayden, Louis, Emin, Lukas".split(", ")
lifter.each {|l| Lifter.new(l, (10..100).to_a.sample)}
Lifter.all.each {|l| l = l.name.to_s.downcase}
=end

yves = Lifter.new("Yves", 90)
nayden = Lifter.new("Nayden", 75)
bapo = Lifter.new("Bapo", 80)
caspar = Lifter.new("Caspar", 95)
emin = Lifter.new("Emin", 75)
louis = Lifter.new("Louis", 85)
 
yves.make_membership(ff)
yves.make_membership(pg)
louis.make_membership(hp)
louis.make_membership(ff)
louis.make_membership(pg)
bapo.make_membership(pg)
caspar.make_membership(pg)
emin.make_membership(ff)

binding.pry

puts "Gains!"
