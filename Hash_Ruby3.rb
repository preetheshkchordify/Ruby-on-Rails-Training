
# 9. A company wants to keep track of the number of hours worked by each of its employees. The employee data is stored in a hash, where each key is the employee name and the value is the number of hours worked. The company wants to find out the total number of hours worked by all employees. 

 

# Initial -  

# employee_data = { 

#   "Alice" => 40, 

#   "Bob" => 30, 

#   "Charlie" => 45, 

#   "Dave" => 35 

# } 

# Output :- The total number of hours worked by all employees is 150.


employee_data={
"Alice":40,
"Bob":30,
"Charlie":45,
"Dave":35}
puts"The total number of hours worked by all employees is #{employee_data.values.sum}"

