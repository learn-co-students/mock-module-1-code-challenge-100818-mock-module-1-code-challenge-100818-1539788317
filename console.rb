require 'pry'
require_relative './book'
require_relative './author'

# book1 = Book.new("JK R", "Harry Potter 1", 200)
# book2 = Book.new("JK R", "Harry Potter 2", 300)
# book3 = Book.new("JRR T", "LOTR", 200)

author1 = Author.new("JK R")
author2 = Author.new("JRR T")

book1 = author1.write_book("Harry Potter 1", 200)
book2 = author1.write_book("Harry Potter 2", 300)
book3 = author2.write_book("LOTR", 200)

#binding.pry
author1_tot_words = author1.total_words
author2_tot_words = author2.total_words

author_most_words = Author.most_words

binding.pry


