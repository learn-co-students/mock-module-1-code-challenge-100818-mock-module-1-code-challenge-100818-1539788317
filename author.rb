class Author 
  attr_accessor :name, :books
  @@all = []

  def initialize(name)
    self.name = name 
    self.books = []
    self.class.all << self
  end

  def self.all 
    @@all 
  end

  def write_book(title, word_count)
    new_book = Book.new(title, word_count, self)
    new_book.title = title 
    new_book.word_count = word_count
    self.books << new_book
  end

  def total_words
    total = 0
    self.books.each do |book|
      total += book.word_count
    end
    total
  end

  def self.most_words
    max_auth = self.all.max_by {|auth| auth.total_words}
    max_auth.name
  end
  


end
