require 'pry'
require_relative './book'
require_relative './author'

rowling = Author.new("JK Rowling")
lewis = Author.new("CS Lewis")

sorcerer = rowling.write_book("Harry Potter and the Sorcerers Stone", 18000)
chamber = rowling.write_book("Harry Potter and the Chamber of Secrets", 20000)
prisoner = rowling.write_book("Harry Potter and the Prisoner of Azkaban", 25000)
goblet = rowling.write_book("Harry Potter and the Goblet of Fire", 45000)
order = rowling.write_book("Harry Potter and the Order of the Phoenix", 50000)
prince = rowling.write_book("Harry Potter and the Half-Blood Prince", 55000)
hallows = rowling.write_book("Harry Potter and the Deathly Hallows", 75000)

wardrobe = lewis.write_book("The Lion, the Witch, and the Wardrobe", 15000)
caspian = lewis.write_book("Prince Caspian", 20000)
voyage = lewis.write_book("The Voyage of the Dawn Treader", 22000)
chair = lewis.write_book("The Silver Chair", 25000)
horse = lewis.write_book("The Horse and His Boy", 21000)
magician = lewis.write_book("The Magicians Nephew", 17000)
battle = lewis.write_book("The Last Battle", 28000)

binding.pry

#rowling total = 243000
#lewis total = 148000
