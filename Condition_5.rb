#You are creating a program that calculates the total cost of a customer's
#order. The cost of an item is $10. If a customer orders 10 or more items,
#they receive a 10% discount on their entire order. Write a Ruby program that
#takes the number of items the customer is ordering as input and outputs
#their total cost. 


puts"Discount calculator"
puts"Enter the total number of items purchasing"
items=gets.chomp.to_i
Price=items*10
discount=0
if items>=10
	discount=Price*10/100
else
	discount=0
end
puts"You purchased #{items} items"
puts"Discount is #{discount}"
puts"After Discount Total price is #{Price-discount}"