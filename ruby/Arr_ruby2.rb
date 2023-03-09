# frozen_string_literal: true

# 2. Given an array of integers, write a method to return a new array with all the odd numbers removed.

puts 'Enter limit of array'
n = gets.chomp.to_i
input = []
puts 'Enter number'
while n.positive?
  num = gets.chomp.to_i
  input.push(num)
  n -= 1
end
new_Array1 = input.reject(&:odd?)
puts "new_Array1=#{new_Array1}"
