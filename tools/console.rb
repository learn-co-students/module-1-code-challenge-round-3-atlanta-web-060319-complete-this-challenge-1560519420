require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


blake = Author.new("Blake")
chris = Author.new("Chris")
tez = Author.new("Tez")

gq = Magazine.new("GQ", "fashion")
vogue = Magazine.new("Vogue", "fashion")
life = Magazine.new("life", "current events")


a1 = Article.new(blake, gq, "fall fashion", "fresh fresh fresh")
a2 = Article.new(chris, vogue, "cook wear", "look good, eat good")
a3 = Article.new(tez, life, "new york new york", "Yeah b")
a4 = Article.new(blake, life, "the world today", "things are all over the place")



#author
test2 = blake.add_article(gq, "hats", "hats on hats")
test3 = blake.articles

#magazine
test1 = Magazine.find_by_name("GQ")










### DO NOT REMOVE THIS
binding.pry

0
