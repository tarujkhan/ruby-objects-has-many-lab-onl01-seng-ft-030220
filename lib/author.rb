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
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1 
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post 
    @@post_count += 1
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