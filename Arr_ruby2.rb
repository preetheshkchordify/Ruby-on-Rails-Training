# 2. Given an array of integers, write a method to return a new array with all the odd numbers removed. 



puts"Enter limit of array"
n=gets.chomp.to_i
input = []
puts "Enter number"
while n>0
  num = gets.chomp.to_i
  input.push(num)
  n = n-1
end
new_Array1=input.reject do|item|
	item%2!=0
end	
puts"new_Array1=#{new_Array1}"
