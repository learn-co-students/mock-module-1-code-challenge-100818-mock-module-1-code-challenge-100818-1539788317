class Book
    attr_accessor :title, :author, :word_count
    @@all = []

    def initialize(title, word_count)
        self.title = title
        self.word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        Author.all each do | writer |
            writer.title_array.each do | author_title |
                if author_title == self
                    return author_title
                end
            end
        end
    end
end
