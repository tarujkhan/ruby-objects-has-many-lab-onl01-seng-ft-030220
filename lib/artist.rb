class Artist 
  attr_accessor :name
  
  @@song_count = 0 
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  
  def songs 
    Song.all.select |song| song.artist
  end 
    
  
    def add_song(song)
      @songs << song
      song.artist = self
      @@song_count += 1 
    end
      
    
    def add_song_by_name(name, genre)
      song = song.New(song)
     add_song(song) 
    end 
    
  
      def self.song_count
        @@song_count
      end 
      
     
end
