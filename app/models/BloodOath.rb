class BloodOath

@@all = []

attr_accessor :follower , :cult, :date

  def initialize (follower , cult)#does not need date in argument, it's done in line 10
    @follower = follower
    @cult = cult
    @date = date = "#{Time.now.year}-#{Time.now.month}- #{Time.now.day}"#returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
    @@all << self
  end

  def self.all

    @@all

  end



  def self.first_oath  #Advanced method --returns the Follower instance for the follower that made the very first blood oath

    oath_sort = self.all.sort_by do |oath|
      Time.parse(oath.initiation_date)
    end
    oath_sort[0].follower

  end




end
