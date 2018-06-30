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
      @@all.each {|song| song  if song == song_name}
  end

end
