class Follower

@@all = []

attr_accessor :name, :age, :life_motto

  def initialize (name,age,life_motto)
    @name = name #returns a string that is the floower's name
    @age = age# returns a fixnim that is the age of the follower
    @life_motto =life_motto # returns a string that is the follower's life motto

    @@all << self
  end

def blood_oaths
  BloodOath.all.select do |blood_oath|
    blood_oath.follower ==  self

  end
end

  def cults#returns an array of this follower's cults
    myBloodOaths = BloodOath.all.select do |bo| #SELECT the BO's where the BO's follower is == self (or this instance of Follower)
      bo.follower == self                       #BloodOath.follower == self (self refers to this instance of Follower)
    end
    myBloodOaths.map do |bo|
      bo.cult

      # or do this// this version depends on defining a blood_oaths method before hand
      # blood_oaths.map  do |blood_oath|
      #   blood_oath.cult
    end
  end

  def  join_cult(cult)#takes inargument of a Cult instance and adds this follower to this cult's lits of followers
        BloodOath.new(self,cult)       #something with shovel method maybe??? nah, just create a new bloodoath that links cults and followers
  end

  def self.all
      @@all
  end

  def self.of_a_certain_age(age)#takes a Fixnum argument that is an age and returns an Array  of followers who are the given age or older
    self.all.select do |follower|#using .select creates and returns the array
      follower.age > age #in this method, follower is what we call each element in the @@all array, and is subjected to the .age attribute
  end

end

end
