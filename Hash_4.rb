#2.Mike has a list of books that he wants to keep track of. He wants to store
#the name, author, and year of publication for each book in a hash. He also
#wants to be able to search for a book by its name and update its year of
#publication.Help Mike write a Ruby program to solve this problem using hash
#operations.


hash1={}
puts"No of books"
n=gets.chomp.to_i
full_array = []
while n>0

	puts"Enter the name"
	ky=gets.chomp
	puts"Enter the author"
	val=gets.chomp
	puts"Enter publication"
	year=gets.chomp.to_i
	hsh = {
		name: ky,
		author: val,
		publ: year
	}
	
	full_array.push(hsh)
	n=n-1
end
puts full_array
flag=0

puts"TO upadate year,enter book name"
nam=gets.chomp
new_array=full_array.each do |value| 

	if value[:name]==nam
		puts"Enter  the updated year"
		yr=gets.chomp.to_i
		value[:publ]=yr
		flag=1
		
	end
end
if flag==0
	puts"Book not found"
else
	puts new_array
end