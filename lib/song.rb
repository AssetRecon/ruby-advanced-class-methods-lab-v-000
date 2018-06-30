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
  newSong = self.new
  @@all << newSong
  newSong
  end

  def self.new_by_name(song_name)
    @name = song_name
    song = self.new
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    @name = song_name
    song = self.new
    @@all << song
    song.name = song_name
    song
  end

  def self.find_by_name(song_name)
      @@all.any? {|song| return song if song.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    if @@all.any? {|song| song.name == song_name} == true
      find_by_name(song_name)
    else
      create_by_name(song_name)
    end
  end

  def self.new_from_filename(filename)
array = []
array2 = []
  array = filename.split("-")
  array2 = array[1].split(".")
  song = self.new
  song.name = array2[0].strip
  song.artist_name = array[0].strip
  @@all << song
  song
  end
end

def self.create_from_filename(filename)
  new_from_filename


end
