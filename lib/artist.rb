class Artist 
  attr_accessor :name
  
  @@song_count = 0 
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all
    @@all 
  end 
  
  
  def songs 
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
