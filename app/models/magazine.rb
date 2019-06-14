class Magazine
  attr_accessor :name, :category, :founding_year, :location


  @@all = []


  def initialize(name, category, founding_year, location)
    @name = name
    @category = category
    @founding_year = founding_year
    @location = location
    @@all << self

  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
  self.all.find do |magazine|
    magazine.name == name
  end
end

def article_titles

Article.all.select do |article|
   article.magazine == self

end
end

def contributors
  self.article_titles.map {|article_title| article_title.author}.uniq
end

def self.find_by_founding_year(year)
  self.all.select do |magazine|
    magazine.founding_year == year
  end
end

def self.find_by_location(location)
self.all.select do |magazine|
  magazine.location == location
end
end


end
