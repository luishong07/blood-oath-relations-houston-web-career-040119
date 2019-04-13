require 'pry'

require_relative '../app/models/Cult.rb'
require_relative '../app/models/Follower.rb'
require_relative '../app/models/BloodOath.rb'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Bell Keeper","Bell Fry Luna",2015)
cult2 = Cult.new("Sunlight Warriors","Lodran",2011)
cult3 = Cult.new("Company of Champions","Majula",2015)
cult4 = Cult.new("Pilgrims of the Abbys","Shaded Woods",2015)
cult5 = Cult.new("Mound Makers","Lothric Castle",2016)
cult6 = Cult.new("The League", "Forbidden Woods", 2015)
cult7 = Cult.new("Healing Church","Yharnam",2015)


follower1 = Follower.new("Solaire",30,"Praise the sun")
follower2 = Follower.new("Lucatiel",31,"must not forget")
follower3 = Follower.new("Patches",32,"lol")
follower4 = Follower.new("Benhart",33, "its real")
follower5 = Follower.new("Grandhal",80, "so dark")
follower6 = Follower.new("Valtr",50, " squash the vermin")
follower7 = Follower.new("Lawrence",60,"fear")
follower8 = Follower.new("Ludwig",55,"my guiding moonlight")
follower9 = Follower.new("Brador",45," you hypocrite")
follower10 = Follower.new("Amelia",38, "GRHHRH")



oath1 = BloodOath.new(follower1,cult2)
oath2 = BloodOath.new(follower2,cult3)
oath3 = BloodOath.new(follower3,cult5)
oath4 = BloodOath.new(follower4,cult3)
oath5 = BloodOath.new(follower5,cult4)
oath6 = BloodOath.new(follower3,cult1)
oath8 = BloodOath.new(follower6,cult6)
oath9 = BloodOath.new(follower7,cult7)
oath10 = BloodOath.new(follower8,cult7)
oath11 = BloodOath.new(follower9,cult7)
oath12 = BloodOath.new(follower10,cult7)


#--- extras

oath7 = BloodOath.new(follower2,cult4)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
