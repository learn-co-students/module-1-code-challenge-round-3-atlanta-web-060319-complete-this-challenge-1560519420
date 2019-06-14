class Article
  attr_reader :author, :magazine
  attr_accessor :title, :content
  @@all_articles = []

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content
    @@all_articles << self
  end

  def self.all
    @@all_articles
  end

  def self.most_verbose
    @@all_articles.max_by {|art| art.content}.author
  end
end
