class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    return song
  end
  # def self.new_by_name(string)
  #   @@all.map do |song|
  #     if song == string
  #       song
  #     end
  #   end
  #end




  def self.destroy_all
     self.all.clear
  end

end
