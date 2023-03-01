#You are creating a program that determines if a number is positive, negative,
#or zero. Write a Ruby program that takes a number as input and outputs
#whether it is positive, negative, or zero. 

puts"Enter a number:"
input=gets.chomp.to_i
puts"You have entered #{input}"

if input>0
	puts"You have entered positive"
elsif input<0
	puts"You have entered a negative"
else input==0
	puts"You have entered zero"
end