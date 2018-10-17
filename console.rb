require 'pry'
require_relative './book'
require_relative './author'

jordan = Author.new("Jordan")
amber = Author.new("Amber")

ex1 = Book.new("book title", 3132, jordan)
ex2 = Book.new("book2", 343, amber)
ex3 = Book.new("book3", 343, amber)


binding.pry


