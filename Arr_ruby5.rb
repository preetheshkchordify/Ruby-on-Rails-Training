# 5.  Given an array of strings, write a method to return a new array containing only the strings with a length between 4 and 8 (inclusive). 


puts"Enter limit of array"
n=gets.chomp.to_i
input = []
puts "Enter string"
while n>0
  num = gets.chomp
  input.push(num)
  n = n-1
end
puts "#{input}"
new_Array1=input.reject do|item|
	item.length<4
end
new_Array1=input.reject do|item|
	item.length>8	
end
	
	
puts"new_Array1=#{new_Array1}"
