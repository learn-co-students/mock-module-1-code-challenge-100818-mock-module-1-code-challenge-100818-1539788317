class Author
    
    @@ll = []

    attr_accessor  :book, :title
    

    def initialize(book, title)
        self.book = book
        self.title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_books
        author.all each do |books|
            @@all < books
        end
    end

    def write_book(title, word_count)
        author.new("Books Are Lame", 99)
    end

    def total_words
        books.each do |words|
            book.word_count.split.size
            end
    end

    def most_words
        word_count.count
    end


end
