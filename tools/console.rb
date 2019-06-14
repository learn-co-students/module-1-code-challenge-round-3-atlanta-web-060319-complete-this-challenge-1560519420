require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


chris = Author.new("Chris",9,22,29)
martin = Author.new("Martin",10,23,90)
rob = Author.new("Rob",11,98,14)


vogue = Magazine.new("Vogue","fashion",1989,"NYC")
auto_trader= Magazine.new("Auto Trader", "vehicle",1877,"LA")
conde_naste= Magazine.new("Conde Naste", "high fashion",1988, "ATL")

article1 = Article.new(chris, vogue,"title1", "blah")
article2= Article.new(martin, auto_trader, "title2", "nah")
article3= Article.new(rob, conde_naste, "title3", "YAAAAAAS")


test= Magazine.find_by_name("Vogue")
test2= chris.articles
test3= chris.magazines
test4= vogue.article_titles
test5= vogue.contributors
test6= chris.add_article("shsdfh","sjsff","dsjgfd")
test7= Author.total_experience
test8= Author.least_articles
test9=  Author.of_a_certain_age(29)
test10= Magazine.find_by_founding_year(1989)
test11= Magazine.find_by_location("NYC")







### DO NOT REMOVE THIS
binding.pry

0
