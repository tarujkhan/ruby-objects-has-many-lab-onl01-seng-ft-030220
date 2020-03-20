class Song 
  attr_accessor :name, :artist
  def initialize(name)
    @name = name 
  end 

def artist_name
  if @artist == nil 
    return nil
  else 
    @artist.name
  end 

def song_count
  @@songs 
end

end 
end 