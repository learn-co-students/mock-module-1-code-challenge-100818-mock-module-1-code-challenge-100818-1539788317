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

    def books
        my_books = Book.all.select do | book |
            book.author == self.name
        end
        my_books.map do | book |
            book.title 
        end
    end

    def write_book(title, word_count)
        new_book = Book.new(title, word_count, self.name)
    end

    def total_words
        my_books = Book.all.select do | book |
            book.author == self.name
        end
        word_counts = my_books.map do | book |
            book.word_count
        end
        sum = 0
        word_counts.each { |a| sum+=a }
        sum
    end

    def self.most_words
        most_word_count = 0
        author_with_most = nil

        @@all.map do |author|
            if author.total_words > most_word_count
                most_word_count = author.total_words
                author_with_most = author
            end
        end
        author_with_most
    end

end
