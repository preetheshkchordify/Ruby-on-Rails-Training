# frozen_string_literal: true

# 6. A teacher wants to calculate the average grade for a class of students. The grades are stored in an array of integers. However, the teacher wants to exclude the lowest grade and the highest grade from the calculation, as they may not be representative of the overall performance.

# grades = [88, 92, 78, 85, 90, 82, 75, 95]

puts 'Enter limit of array'
n = gets.chomp.to_i
grades = []
puts 'Enter string'
while n.positive?
  num = gets.chomp.to_i
  grades.push(num)
  n -= 1
end
puts "grades=#{grades}"
grades_sort = grades.sort
puts grades.sort.to_s
grades_remove = grades_sort.shift
grades_remove = grades_sort.pop
puts grades_sort.to_s
avg_Grade = grades_sort.sum / grades_sort.length
puts "avg_Grade=#{avg_Grade}"
