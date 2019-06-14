require "pry"
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
    Author.new(self, magazine, title, content)
  end

  def articles
     Articles.all.select{|article|article.author == self}
  end

  # def self.most_verbose
  # #   # longest_article = 0
  # #   # all_articles = Article.all.map do |article|
  # #   #   if article.content.length > longest_article
  # #   #     longest_article = article.content.length
  # #   #   end
  # #   # end
  # #   # all_articles.map{|article|article.content.length == longest_article}

  # #   #..... will come back
  # #   Article.all.max_by(&:length)
  # # end 
  
  def magazines
    this_is = Article.all.select{|item|item.magazine}
    this_is.map{|item|item.magazine}.uniq
  end

end
