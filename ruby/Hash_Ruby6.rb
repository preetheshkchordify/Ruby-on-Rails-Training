# frozen_string_literal: true

# 10. Alice is collecting data on the ages of the members of her local book club. She has created an array called ages that contains the following values: [28, 35, 42, 51, 39, 44, 32, 48, 29, 36]. Alice wants to find the average age of the members of her book club. What is the average age of the book club members?

# Output - : The average age of the book club members is

BookclubAges = [28, 35, 42, 51, 39, 44, 32, 48, 29, 36].freeze
length = BookclubAges.length
avg_Grade = BookclubAges.sum / length
puts "avg_Grade=#{avg_Grade}"
