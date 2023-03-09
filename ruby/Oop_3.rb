#3.     Problem: A bookstore wants to keep track of their inventory. Each book
#has a title, author, and price. Create a Book class that can store this
#information, as well as a Bookstore class that can add books to its
#inventory, display the entire inventory, and calculate the total value of
#the inventory

class Bookstore
  def initialize
    @inventory=[]
  end
end

class Book < Bookstore
  def add_inventory(book_detail)
    @inventory.push(book_detail)
  end

  def display_inventory
    puts @inventory
  end

  def displayDetails
    super
  end
  def total_value
    puts "Total value is #{@inventory.map {|x| x[:price]}.sum}"
    

  end
end

book1=Book.new
books = [{name: '1984', author: 'George Orwell', price: 1399},
        {name: '1985', author: 'George Martin', price: 800}]
books.each do |book|
  book1.add_inventory(book)
end
book1.display_inventory
book1.total_value