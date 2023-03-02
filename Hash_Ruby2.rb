# frozen_string_literal: true

# 12. You need to keep track of the number of occurrences of each letter in a given string.
# Create a function that accepts a string and returns a hash where the keys are the unique letters in the string and the values are the number of
# occurrences of each letter.

# Output examples :-

# letter_count("hello world") #=> {"h"=>1, "e"=>1, "l"=>3, "o"=>2, " "=>1, "w"=>1, "r"=>1, "d"=>1}

# letter_count("abracadabra") #=> {"a"=>5, "b"=>2, "r"=>2, "c"=>1, "d"=>1}

puts 'Enter a string'
input = gets.chomp
letters = input.split('')
puts letters.to_s
output = {}
letters.map do |char|
  output.key?(char) ? output[char] += 1 : output.store(char.to_s, 1)
end
puts output.to_s
