require_relative "./book.rb"

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
        Book.all.select {|title| title.author == self}

    end

    def write_books(title, words)
        title = Book.new(title, words,self)
    end

    # def total_words
    #     books[:words]

    # end


        
end
