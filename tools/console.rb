require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Sheldon")
author2 = Author.new("Maryam the magnificient")
author3 = Author.new("Gary")

test1 = author2.name
test2 = Author.all 
# test3 = Author.most_verbose

magazine1 = Magazine.new("Hiker's Guide", "Todo")
magazine2 = Magazine.new("Tech Time","History")
magazine3 = Magazine.new("Food Fanatics","Guns and Ammunition")

article1 = Article.new(author2,magazine1,"Growth as a mentor","Why am I content, I could be a blurb #lifegoals")
article2 = Article.new(author1, magazine1, "Grilling chicken","The art and science of a good piece of grilled chicken")
article3 = Article.new(author2, magazine2, "My secret love of cookies","There is no content... carry on")

test4 = Article.all
test5 = article2.author

test6 = article1.magazine
test7 = article3.title
test8 = article3.content

test9 = magazine2.name
test10 = magazine3.category
test11 = Magazine.all
test12 = Magazine.find_by_name("Tech Time")











### DO NOT REMOVE THIS
binding.pry

0
