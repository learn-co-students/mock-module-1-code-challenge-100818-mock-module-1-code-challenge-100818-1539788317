require 'pry'
require_relative './author'

class Book
  attr_accessor :title, :author, :word_count
  @@all = []

  def initialize(title, author, word_count)
    self.title = title
    self.author = author
    self.word_count = word_count
    @@all << self
  end

  # return all of the books
  def self.all
    @@all
  end
end
