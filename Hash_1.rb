# frozen_string_literal: true

# 1 .John has a list of 10 numbers. He wants to find the sum of all numbers
# greater than 5 and also the index of the first number that is greater than
# 8. Help John write a Ruby program using the injectand each_with_indexmethods
# to solve this problem.

puts 'Enter limit of array'
n = gets.chomp.to_i
input = []
puts 'Enter number'
while n.positive?
  num = gets.chomp.to_i
  input.push(num)
  n -= 1
end

new_Array1 = input.reject do |item, _index|
  item < 5
end
new_Array2 = new_Array1.reduce do |sum, val|
  sum += val
end
puts "Sum is #{new_Array2}"

input.each_with_index do |value, index|
  if value > 8
    puts "Index value is #{index}"
    break
  end
end
