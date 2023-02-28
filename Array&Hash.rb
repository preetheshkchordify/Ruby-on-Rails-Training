# Array Questions

	#1.  Given an array of integers, write a Ruby program to return the sum of all the even numbers in the array. 

Example: 

Input: [1, 2, 3, 4, 5, 6] 

Output: 12 (sum of even numbers 2, 4, and 6) 

puts"Enter limit of array"
n=gets.chomp.to_i
input = []
puts "Enter number"
while n>0
  num = gets.chomp.to_f
  input.push(num)
  n = n-1
end
sum=0
sum_Of_Even=input.select{|number| number%2==0}
puts "sum_Of_Even=#{sum_Of_Even.sum}"


2. Given an array of integers, write a method to return a new array with all the odd numbers removed. 

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

3. Given an array of strings, write a method to return a new array containing only the strings that contain the letter 'a'. 		



puts"Enter limit of array"
n=gets.chomp.to_i
input = []
array_a=[]
puts "Enter number"
while n>0
  num = gets.chomp
  input.push(num)
  n = n-1
end
input.each do|num|
	num.chars.each do|char|
		if char =='a'
			array_a.push(num)
			break
		end
	end
end

puts"The result is #{array_a}"


4. Given an array of integers, write a method to return a new array with the elements in reverse order. 


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


5.  Given an array of strings, write a method to return a new array containing only the strings with a length between 4 and 8 (inclusive). 

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
new_Array2=new_Array1.reject do|item|
	item.length>8
end
	
puts"new_Array1=#{new_Array2}"


6. A teacher wants to calculate the average grade for a class of students. The grades are stored in an array of integers. However, the teacher wants to exclude the lowest grade and the highest grade from the calculation, as they may not be representative of the overall performance. 

grades = [88, 92, 78, 85, 90, 82, 75, 95] 


puts"Enter limit of array"
n=gets.chomp.to_i
grades = []
puts "Enter string"
while n>0
  num = gets.chomp.to_i
  grades.push(num)
  n = n-1
end
puts"grades=#{grades}"
grades_sort=grades.sort
puts"#{grades.sort}"
grades_remove=grades_sort.shift
grades_remove=grades_sort.pop
puts"#{grades_sort}"
avg_Grade=(grades_sort.sum)/grades_sort.length
puts"avg_Grade=#{avg_Grade}"


 

7. A company wants to track the number of sales made by each of its salespeople. The sales data is stored in an array of hashes, where each hash contains the name of the salesperson and the number of sales made. The company wants to find out who made the most sales and how many sales they made. 

Initialize - 

 sales_data = [ 

  { name: "Alice", sales: 10 }, 

  { name: "Bob", sales: 20 }, 

  { name: "Charlie", sales: 35 }, 

  { name: "Dave", sales: 25 } 

] 

Output  :- Dave made the most sales with 25 sales. 


sales_data=[
{name:"Alice",sales:10},
{name:"Bob",sales:20},
{name:"Charlie",sales:15},
{name:"Dave",sales:25}
]
max_value=0
name=''
sales_data.each do |value| 
	if value[:sales]>max_value
		max_value=value[:sales]
		name=value[:name]
	end
end
puts"#{name} made the most sales with #{max_value} sales. "	







8. A music festival wants to keep track of the number of people attending each of its stages. The attendance data is stored in an array of arrays, where each inner array contains the name of the stage and the number of people attending. The festival wants to find out which stage had the highest attendance and how many people attended that stage. 

Initialize - 

attendance_data = [ 

  ["Main Stage", 5000], 

  ["Rock Stage", 3000], 

  ["Dance Stage", 7000], 

  ["Acoustic Stage", 2000] 

] 

 

Output required - Dance Stage had the highest attendance with 7000 people. 


attendance_data=[
["Main stage",5000],
["Rock stage",3000],
["Dance stage",7000],
["Acoustic stage",2000]
]
max_value=0
name=''
attendance_data.each do |value|
	if value[1]>max_value
	max_value=value[1]
	name=value[0]
	end	
end
puts"#{name} had the highest attendance with #{max_value} people"



9. A company wants to keep track of the number of hours worked by each of its employees. The employee data is stored in a hash, where each key is the employee name and the value is the number of hours worked. The company wants to find out the total number of hours worked by all employees. 

 

Initial -  

employee_data = { 

  "Alice" => 40, 

  "Bob" => 30, 

  "Charlie" => 45, 

  "Dave" => 35 

} 

Output :- The total number of hours worked by all employees is 150. 



employee_data={
"Alice":40,
"Bob":30,
"Charlie":45,
"Dave":35}
puts"The total number of hours worked by all employees is #{employee_data.values.sum}"





10. Alice is collecting data on the ages of the members of her local book club. She has created an array called ages that contains the following values: [28, 35, 42, 51, 39, 44, 32, 48, 29, 36]. Alice wants to find the average age of the members of her book club. What is the average age of the book club members? 

 
Output - : The average age of the book club members is  

BookclubAges=[28,35,42,51,39,44,32,48,29,36]
length=BookclubAges.length
avg_Grade=BookclubAges.sum/length
puts"avg_Grade =#{avg_Grade}"





	11. You have a list of usernames and passwords stored in a hash in your Ruby program. You need to create a login function that accepts a username and password as parameters and checks if they match the values in the hash. If the username and password are valid, the function should return "Login Successful". Otherwise, it should return "Invalid username or password". 

	users = { 

	  "user1" => "pass1", 

	  "user2" => "pass2", 

	  "user3" => "pass3" 

	} 



 users=[ 

  { username: "user1", password: "pass1" }, 

  { username: "user2", password: "pass2" }, 

  { username: "user3", password: "pass3" }, 

] 

puts"Enter username"
uname=gets.chomp
puts"Enter password"
pswd=gets.chomp
flag=0

users.each do|value|
	if value[:username]==uname && value[:password]==pswd
			puts"Login successful"
			flag+=1
		break
	end
end
if flag==0
 puts"Invalid credential"
end



12. You need to keep track of the number of occurrences of each letter in a given string. Create a function that accepts a string and returns a hash where the keys are the unique letters in the string and the values are the number of occurrences of each letter. 

 

Output examples :-  

 

letter_count("hello world") #=> {"h"=>1, "e"=>1, "l"=>3, "o"=>2, " "=>1, "w"=>1, "r"=>1, "d"=>1} 

letter_count("abracadabra") #=> {"a"=>5, "b"=>2, "r"=>2, "c"=>1, "d"=>1} 






