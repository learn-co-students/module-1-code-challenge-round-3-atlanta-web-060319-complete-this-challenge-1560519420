class Author
  attr_reader :name
  attr_accessor :years_experience, :number_of_articles, :age
  @@all = []


  def initialize(name, years_experience, number_of_articles, age)
    @name = name
    @years_experience = years_experience
    @number_of_articles = number_of_articles
    @age = age
    @@all << self

  end

  def self.all
    @@all
  end

  def articles

Article.all.select do |article|
   article.author == self

end
end

def magazines
  self.articles.map {|article| article.magazine}.uniq
end

def add_article(magazine, title, content)
  Article.new(self, magazine, title, content)
end

def self.least_articles
  self.all.max_by do |author|
    author.articles.length / author.number_of_articles
  end
end


def self.total_experience
 self.all.reduce(0) do |sum,author|
   sum + author.years_experience
 end
end

def categories
  self.articles.map {|article| article.category}.uniq
end


def self.of_a_certain_age(age)
  self.all.select do |author|
    author.age > age
  end
end





end
