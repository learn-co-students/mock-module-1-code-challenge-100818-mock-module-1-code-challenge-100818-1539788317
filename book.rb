class Book 

    attr_accessor :title, :word_count, :author

    @@all = []

    def initialize(title, word_count, author)
        self.title = title
        self.word_count = word_count
        self.author = author
        @@all << self
    end

    def self.all 
        @@all
    end

    # def author 
    #     # returns INSTANCE of author
    #     Author.all.find do |author|
    #         author.name == self.author
    #     end
    #     author
    # end

end
