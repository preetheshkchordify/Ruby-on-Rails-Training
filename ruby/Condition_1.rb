# frozen_string_literal: true

# : You are creating a program that calculates a student's letter grade based on their numerical grade.
# If a student's numerical grade is between 90 and 100, they receive an A. If their grade is between 80 and 89, they receive a B.
# If their grade is between 70 and 79, they receive a C. If their grade is between 60 and 69, they receive a D.
# If their grade is below 60, they receive an F. Write a Ruby program that takes a student's numerical grade as input and outputs their letter grade.

puts 'Enter your mark:'
mark = gets.chomp.to_i
puts "You have entered #{mark}"
if mark >= 90 && mark <= 100
puts 'Your grade is A'
elsif mark >= 80 && mark <= 89
puts 'Your grade is B'
elsif mark >= 70 && mark <= 79
puts 'Your grade is C'
elsif mark >= 60 && mark <= 69
puts 'Your grade is D'
else
puts 'YOur grade is F'
end
