class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create()
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(songName)
    song = self.new
    song.name =  songName
    @@all << song
    song
  end

  def self.create_by_name(songName)
    song = self.new
    song.name =  songName
    @@all << song
    song
  end

  def self.find_by_name(songName)
    @@all.find{|person| person.name == songName}
  end

  def self.find_or_create_by_name(songName)
    foundSong = self.find_by_name(songName)
    #puts "#{foundSong}"
    if ( foundSong == nil)
      self.create_by_name(songName)
    else
      return foundSong
    end

  end

  def self.alphabetical

    names = []
    self.all.each do |song| names = song.names
    puts "#{names}"
    #ordered = allitems.sort_by!{|m| m.group.name.downcase}

  end

end

song_1 = Song.create_by_name("Thriller")
song_2 = Song.create_by_name("Blank Space")
song_3 = Song.create_by_name("Call Me Maybe")

Song.alphabetical
