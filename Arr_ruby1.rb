# #1.  Given an array of integers, write a Ruby program to return the sum of all the even numbers in the array. 

# Example: 

# Input: [1, 2, 3, 4, 5, 6] 

# Output: 12 (sum of even numbers 2, 4, and 6) 



puts"Enter limit of array"
n=gets.chomp.to_i
input = []
puts "Enter number"
while n>0
  num = gets.chomp.to_f
  input.push(num)
  n = n-1
end
sum=0
num1=input.select{|number| number%2==0.0}
puts "#{num1.sum}"





