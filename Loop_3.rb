#You are creating a program that calculates the factorial of a given number.
#The factorial of a number is the product of all positive integers up to and
#including that number. For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1
#= 120. Write a Ruby program that takes a number as input, calculates its
#factorial, and outputs the result. 

puts"Factorial of a number"
puts"Enter a numbera"
num=gets.chomp.to_i
n=num
fact=1
while n>0
	fact=fact*n	
	n=n-1
end
puts "#{num} factorial is #{fact}"