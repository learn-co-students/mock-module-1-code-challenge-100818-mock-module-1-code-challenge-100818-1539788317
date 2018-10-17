class Author
    attr_accessor :name, :title_array
    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
        self.title_array = []
    end

    def self.all
        @@all
    end

    def books
        self.title_array
    end

    def write_book(title, word_count)
        self.title_array << Book.new(title, word_count)
    end

    def total_words
        result = 0
        self.books.each do | book |
            result += book.word_count
        end
        result
    end

    def self.most_words
        highest_word_count = 0
        prolific_author = nil

        Author.all.each do | author |
            if author.total_words > highest_word_count
                prolific_author = author
                highest_word_count = author.total_words
            end
        end
        prolific_author
    end
end 