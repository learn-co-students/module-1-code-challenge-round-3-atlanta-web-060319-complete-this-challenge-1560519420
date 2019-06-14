class Magazine
  attr_accessor :name, :category

  @@all = []

  
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self 
  end

  def self.all
    @@all
  end 

  def articles
    Article.all.select { |art| art.magazine == self }
  end 

  def contributors
    articles.collect { |art| art.author }
  end 

  def self.find_by_name(magname)
    Magazine.all.find { |mag| mag.name == magname}
  end 

  def article_titles
   articles.collect { |mag| mag.title }
  end 

  def word_count
    total = 0
    articles.collect { |art|
    total += art.content.length
  }
    total
  end 



end
