class Cult

@@all =[]


attr_accessor :name, :location, :founding_year#, :slogan#,:population

  def initialize(name,location,founding_year)

    @name = name #returns a string that is the clut's name
    @location = location#returns a string that is the city where the cult is located
    @founding_year = founding_year #returns a fixnum that is the year the cult was founded
    #@slogan = slogan # returns s strring that is this cult's slogan

    @@all << self#retuns  an array of all the cults(as objects)

  end

  def recruit_follower(follower)#takes in argument of Follower instance and adds them to the cult list of followers
    BloodOath.new(follower,self)

  end

  def blood_oaths#advanced method
    BloodOath.all.select  do |bloodoath|
      bloodoath.cult == self
    end
  end



  def followers#advanced method
    blood_oath.map do |bloodoath|
      bloodoath.follower
  end

  def cult_population #returns a Fixnum that is the number of followers in this cult

  # population =  BloodOath.all.select do |bo|
  #     bo.cult==self
  followers.length #this depends of the followers method above

    end
    population.length
  end

  def self.all #returns array of all cults
    @@all #the array
  end



  def self.find_by_location(location)#takes a string argument that is a location and returns an Array of cults that are in that location
    self.all.select do |cult|
      cult.location == location
    end
  end



  def self.by_name(name)#takes a String argument that is a name and returns a Cult instance whose name matches that argument
    self.all.select do |cult|
      cult.name == name
    end


  end

  def self.find_by_foundin_year(year)#takes a Fixnum argument that is a year and returns all the cults founded in that year
    self.all.select do |cult|
      cult.founding_year == year
    end


  end





end
