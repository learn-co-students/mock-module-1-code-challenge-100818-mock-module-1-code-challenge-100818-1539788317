require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("j.k. rowling")
author2 = Author.new("j.r.r. tolkien")
author2.write_book("the hobbit", 534)
author1.write_book("harry potter", 262)
author1.write_book("fantastic beasts", 127)
book1 = Book.new("this new book", 324, "j.k. rowling")

binding.pry


