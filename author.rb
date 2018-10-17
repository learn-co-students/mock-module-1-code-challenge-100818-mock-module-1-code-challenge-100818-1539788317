require 'pry'
require_relative './book'

class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  # return all of the authors
  def self.all
    @@all
  end

  # return all of the books an author has written
  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  # make a new Book instance associated with this author
  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end

  # return total number of words that author has written across all of their authored books
  def total_words
    words = 0
    self.books.each do |book|
      words += book.word_count
    end

    words
  end

  # return the author instance who has written the most words
  def self.most_words
    most = 0
    author_with_most = nil
    self.all.each do |author|
      if author.total_words > most
        most = author.total_words
        author_with_most = author
      end
    end
    author_with_most
  end
end
