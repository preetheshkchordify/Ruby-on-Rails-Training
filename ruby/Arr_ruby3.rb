# frozen_string_literal: true

# 3. Given an array of strings, write a method to return a new array containing only the strings that contain the letter 'a'.

puts 'Enter limit of array'
n = gets.chomp.to_i
input = []
array_a = []
puts 'Enter number'
while n.positive?
  num = gets.chomp
  input.push(num)
  n -= 1
end
input.each do |num|
  num.chars.each do |char|
    if char == 'a'
      array_a.push(num)
      break
    end
  end
end

puts "The result is #{array_a}"
