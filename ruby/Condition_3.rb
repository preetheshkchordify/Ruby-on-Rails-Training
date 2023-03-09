# frozen_string_literal: true

# You are creating a program that determines if a person is eligible to vote in
# a particular election. In order to vote, a person must be at least 18 years
# old and a citizen of the country in which the election is taking place.
# Write a Ruby program that takes a person's age and citizenship status as
# input and outputs whether they are eligible to vote

puts 'Cheecking eligiblitty to vote in India'
puts 'Enter the your age:'
age = gets.chomp.to_i
puts "You have entered your age is #{age}"
age >= 18 ? (puts 'You are eligible to vote n India') : (puts 'you are not eligible to vote in India')
# if age>=18
# 	puts"Your are eligible to vote in India"
# else
# 	puts"Your are not eligible to vote in India"
# end
