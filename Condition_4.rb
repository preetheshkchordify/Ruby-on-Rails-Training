#You are creating a program that calculates the discount for a customer's
#purchase. If a customer spends over $100, they receive a 10% discount. If
#they spend over $50 but less than or equal to $100, they receive a 5%
#discount. If they spend less than or equal to $50, they do not receive a
#discount. Write a Ruby program that takes the customer's purchase amount as
#input and outputs their discount amount. 

puts"Discount calculator"
puts"ENter your bill amt"
bill_amt=gets.chomp.to_i
discount=0
if bill_amt>100
	discount=bill_amt*10/100
	puts discount
elsif bill_amt>50 && bill_amt<=100
	discount=bill_amt*5/100
else
	discount=0
end
puts"Your have purchased for Rs#{bill_amt}"
puts"Your discount amount is Rs#{discount}"
puts"Total you have to pay Rs #{bill_amt-discount}"