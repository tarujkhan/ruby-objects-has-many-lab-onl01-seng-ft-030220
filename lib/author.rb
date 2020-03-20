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
      
    
    def add_post_by_name(name)
      post = Post.new(name)
     add_post(post) 
    end 
    
  
      def self.post_count
       Post.all.count 
      end 
      
     
end
