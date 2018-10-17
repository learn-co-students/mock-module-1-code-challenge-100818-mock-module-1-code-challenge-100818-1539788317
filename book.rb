
require 'pry'

class Book

    @@ll = []

    attr_accessor   :name, :title
    attr_reader :author

    def initialize(author, title)
        self.author = author
        self.title = title
        @@all < self
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def title
        @title
    end

    def word_count
        books.each do |book|
        book.word_count.split.size
        end
    end
end
