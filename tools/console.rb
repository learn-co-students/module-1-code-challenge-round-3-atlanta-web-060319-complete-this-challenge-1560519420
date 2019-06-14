require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

hadi = Author.new("Hadi")
adam = Author.new("Adam")
ali = Author.new("Ali")

sounds = Magazine.new("Sounds", "Music")
plays = Magazine.new("Plays", "Entertainment")
life = Magazine.new("Life", "People")
school = Magazine.new("School", "Education")

first = Article.new(hadi, sounds, "Screams", "Screams are not screams but sounds.")
second = Article.new(adam, plays, "Cars", "Cars at first sight are just cars but second sight are new worlds.")
third = Article.new(ali, life, "Birth", "Birth is the beginning BUT also the end...think about it.")
fourth = Article.new(adam, school, "Pre-School", "Some see babies, but I see even more babies...im too old for this." )




### DO NOT REMOVE THIS
binding.pry

0
