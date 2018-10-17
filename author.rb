require 'pry'
require_relative './book'

class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def total_words
        #return the total number of words 
        #that author has written across all of their authored books.
        author_book = Book.all.select do |book|
            book.author == self
        end
        sum = 0
        author_book.each do |book|
            sum += book.word_count
        end
        sum
    end

    def self.most_words
        # return the author instance who has written the most words
        words = 0
        author_most = nil
        self.all.each do |author|
            if author.total_words > words
                words = author.total_words
                author_most = author
            end
        end
        author_most
    end

end
