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
      Magazine.all.select{|magazine|magazine.name == name}
  end


end
