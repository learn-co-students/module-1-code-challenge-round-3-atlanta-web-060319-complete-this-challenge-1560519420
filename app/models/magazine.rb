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

  def self.find_by_name(name)
    all.first do |check|
      check.name == name
    end
  end

######
  def article_titles
    Article.all.select do |titles|
      titles.magazine
  end
end

###
def contributors
  Article.all.select do |writer|
    writer.author == self
  end
end


def word_count
  self.article.count
  # Article.all.select do |count|
  #   count.content.sum
  # end
end





end
