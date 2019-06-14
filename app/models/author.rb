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
  Article.all.map do |writer|
    writer.author
  end
end




#
#
# #####
# def magazines
#   self.articles.select do |mag|
#   mag.magazine
# end
# end
#
# ####
#   def most_verbose
#     Article.all.map do |words|
#       words.content.length.to_f
#   end
# end
#
#
#
# def show_specialites
#
# end
#
# # def self.most_active
# #   Select
#
#


end
