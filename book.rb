class Book
    attr_accessor :title , :words, :author

    @@all = []

    def initialize(title, words, author)
        self.title = title
        self.words = words
        self.author = author
        @@all << self
    end

    def author
        @author
    end
    
    def title
        @title
    end

    def word_count
        @words
    end

    def self.all
        @@all
    end
end
