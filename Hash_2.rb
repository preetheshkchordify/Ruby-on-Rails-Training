#Emily is a manager who wants to keep track of her employees' work schedules.
#She wants to write a Ruby program that uses a hash to store the employees'
#names as keys and their work schedules as values. She also wants to print
#out the schedule of a specific employee based on their name, but only if
#their name is present in the hash.Help Emily write a Ruby program to solve
#this problem using a hash and conditions.



hash1={}
puts"No of employee"
n=gets.chomp.to_i
while n>0

	puts"Enter the name"
	ky=gets.chomp
	puts"Enter the schedule"
	val=gets.chomp
	hsh = hash1.store(ky,val)
	n=n-1
end
puts hash1

puts"Name of the employee to print schedule"
nam=gets.chomp
if(hash1.has_key?(nam))
	puts"#{nam} schedule is #{hash1[nam]}"
else
	puts "not found"
end