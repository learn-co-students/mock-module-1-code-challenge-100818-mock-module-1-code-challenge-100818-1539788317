class Book 
  attr_accessor :title, :word_count, :author 

  @@all = []

  def initialize(title, word_count, author)
    self.title = title
    self.word_count = word_count
    @author = author 
    self.class.all << self
  end

  def self.all 
    @@all
  end


end
