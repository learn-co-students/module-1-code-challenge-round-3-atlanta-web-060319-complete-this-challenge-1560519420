require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
chris = Author.new("Chris Kalfas")
steph = Author.new("Steph Lloyd")

people = Magazine.new("People", "Gossip")
today = Magazine.new("USA Today", "News")

health = Article.new(chris, people, "Health Care Today", "Things arent looking good. Don't die")
cats = Article.new(chris, today, "Cats are Everywhere", "Cats attacks on rise in downtown area")
cars = Article.new(steph, people, "Cars", "Cars are smarter than the people driving them.")

test1 = chris.add_article(people, "Coding is Real", "To code or not to code")
test2 = chris.articles
test3 = chris.magazines
test4 = people.articles
test5 = people.contributors
#test6 = Author.most_verbose
test7 = Magazine.find_by_name("USA Today")
test8 = chris.show_specialties
test9 = Author.most_active
test10 = people.article_titles
test11 = people.word_count








### DO NOT REMOVE THIS
binding.pry

0
