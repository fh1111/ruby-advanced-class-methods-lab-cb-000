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
    return self.all.sort_by {|obj| obj.name}
  end

  def self.new_from_filename(fileName)
    songName = fileName.split("-")[0]
    artistName = fileName.split("-")[1].split(".")

    puts "#{songName} + #{artistName}"

  end


end


song = Song.new_from_filename("Thundercat - For Love I Come.mp3")
