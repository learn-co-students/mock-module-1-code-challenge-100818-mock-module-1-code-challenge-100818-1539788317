require 'pry'
require_relative './book'
require_relative './author'

tommy = Author.new("tommy")
billy = Author.new("billy")

tommy.write_book("figaro", 123)
tommy.write_book("carmen", 321)
billy.write_book("opera", 1222)
castle = Book.new("castles", 242, billy)


tommy.total_words
Author.most_words


binding.pry


