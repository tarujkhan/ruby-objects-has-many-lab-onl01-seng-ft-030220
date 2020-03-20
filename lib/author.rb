class Author 
  attr_accessor :name, :posts 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @posts = []
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
 
 def songs 
    Song.all.select {|song| song.artist == self}
  end 
    
  
    def add_song(song)
      @songs << song
      song.artist = self
   
    end
      
    
    def add_song_by_name(name)
      song = Song.new(name)
     add_song(song) 
    end 
    
  
      def self.song_count
       Song.all.count 
      end 
      
     
end

 