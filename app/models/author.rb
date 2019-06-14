class Author
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end 

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end 

  def articles
    Article.all.select { |art| art.author == self }
  end 

  def magazines
    articles.collect { |art| art.magazine }.uniq
  end 
#-------COME BACK
  # def self.most_verbose
  #   Author.all.max_by {|auth| auth.}
   
  # end 
#-------------------------------

def show_specialties
  articles.collect { |art| art.magazine.category }.uniq
end 

def self.most_active
  Author.all.max_by { |auth| auth.articles.count }
end 


end
