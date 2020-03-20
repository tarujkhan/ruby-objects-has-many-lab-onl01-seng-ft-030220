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
  
 def posts
   Post.all.select {|post| post.author == self}
  end 
 
  def add_post(post)
      @posts << post
      post.author = self
   
    end
      
    
    def add_ppst_by_name(name)
      post = post.new(name)
     add_song(song) 
    end 
    
  
      def self.song_count
       Song.all.count 
      end 
      
     
end
