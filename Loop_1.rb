#You are creating a program that checks if a given word is a palindrome. A
#palindrome is a word that is spelled the same way forwards and backwards.
#For example, "racecar" is a palindrome. Write a Ruby program that takes a
#word as input, checks if it is a palindrome, and outputs the result. 


puts"Checking palindrome"
puts"ENter a string"
str1=gets.chomp
str2=str1.reverse
# if str1==str2
# 	puts"#{str1}is palindrome"
# else 
# 	puts"#{str1} is not a palindrome"
# end
str1==str2 ? (puts"#{str1} is palindrome"):(puts"#{str2} is not palindrome")
	