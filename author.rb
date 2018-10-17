class Author
    attr_accessor :books
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
    
    def write_book(title, word_count)
        author = Book.new('title', 'word_count')
    end

    def total_words
       
    end

       
end
