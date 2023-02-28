

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