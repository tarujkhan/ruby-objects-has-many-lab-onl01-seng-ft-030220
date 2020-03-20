class Post 
  attr_accessor :title, :author 
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @all 
  end 
  
  def author_name
    if @author == nil 
      return nil
    else 
      @author.name 
    end
  end 
end 


class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 

def artist_name
  if @artist == nil 
    return nil
  else 
    @artist.name
  end 
  end 
end 