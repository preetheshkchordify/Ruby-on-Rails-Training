#You are creating a program that checks if a given year is a leap year. A year
#is a leap year if it is divisible by 4, except for years that are divisible
#by 100 but not by 400. Write a Ruby program that takes a year as input and
#outputs whether it is a leap year or not. 

puts"Check Leap year"
puts"Enter the year"
year=gets.chomp.to_i
if year%4==0
	if year%100==0
		year%400==0 ? (puts"#{year} is a leap year"):(puts"#{year} is not a leap year")
	else
		puts"#{year} is a leap year"
		
	end
else
	puts"#{year} is not a leap year"
end