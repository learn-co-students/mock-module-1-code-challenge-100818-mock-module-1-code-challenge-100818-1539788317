class Book
    attr_accessor :author, :title
    @@all = []
    
    # def initialize
    #     @author = author
    #     @title = title
    #     @@all << self
    # end

    def self.all
        @@all
    end

    def author
        Author.all.select do | author |
            author.book == self
    end

    def word_count
        number_of_words > 0
        self.author.each do | word |
            if number_of_words = word_count.book
               
            end
    end
    
end
