class Author
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end 

    def books
        Book.all.select do |one_book|
            one_book.author == self
        end 
    end 

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end 

    def total_words
        total = 0
        self.books.map do |one_book|
            total+= one_book.word_count
        end 
        total
    end     

    def self.all
        @@all
    end 

    def self.most_words
        most = 0
        author_with_most_words = nil

        Author.all.each do |author_instance|
            if author_instance.total_words > most
                most = author_instance.total_words
                author_with_most_words = author_instance
            end
        end 

        author_with_most_words
    end 

end 
