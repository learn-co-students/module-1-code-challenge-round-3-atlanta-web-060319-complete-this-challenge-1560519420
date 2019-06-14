class Author
  attr_reader :name
  @@all_authors = []

  def initialize(name)
    @name = name
    @@all_authors << self
  end

  def self.all
    @@all_authors
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    articles.map {|art| art.magazine}.uniq
  end

  def show_specialties
    articles.map {|art| art.magazine.category}.uniq
  end

  def self.most_active
    @@all_authors.max_by {|art| art.articles.count}
  end
end
