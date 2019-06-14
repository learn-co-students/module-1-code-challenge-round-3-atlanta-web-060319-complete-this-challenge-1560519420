class Magazine
  attr_accessor :name, :category
  @@all_mags = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all_mags << self
  end

  def self.all
    @@all_mags
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def article_titles
    articles.map {|art| art.title}
  end

  def contributors
    articles.map {|art| art.author}
  end

  def word_count
    articles.map {|art| art.content}.join.length
  end

  def self.find_by_name(name)
    @@all_mags.find {|mag| mag.name == name}
  end

end
