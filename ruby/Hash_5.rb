# frozen_string_literal: true

# 2.Mike has a list of books that he wants to keep track of. He wants to store
# the name, author, and year of publication for each book in a hash. He also
# wants to be able to search for a book by its name and update its year of
# publication.Help Mike write a Ruby program to solve this problem using hash
# operations.

books = { 'To Kill a Mockingbird' => { author: 'Harper Lee', year:
1960 }, '1984' => { author: 'George Orwell', year: 1949 }, "The Catcher in the
Rye" => { author: 'J.D. Salinger', year: 1951 }, 'Pride and Prejudice' =>
{ author: 'Jane Austen', year: 1813 }, 'The Great Gatsby' => { author: 'F.Scott Fitzgerald', year: 1925 } }

# puts books

nam = '1984'
if books.key?(nam)
  puts 'key found'
  puts 'Enter  the updated year'
  yr = gets.chomp.to_i
  books[nam][:year] = yr
  puts books

else
  puts 'Key not found'
end
