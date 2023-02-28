# 4. Given an array of integers, write a method to return a new array with the elements in reverse order. 



puts"Enter limit of array"
n=gets.chomp.to_i
input = []
puts "Enter number"
while n>0
  num = gets.chomp
  input.push(num)
  n = n-1
end

reverse_Array=input.reverse
puts"#{reverse_Array}"
