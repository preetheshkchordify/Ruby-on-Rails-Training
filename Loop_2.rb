# frozen_string_literal: true

# 9. A restaurant has a list of menu items and their prices. The restaurant
# owner wants to print the menu to the console, along with the price of each
# item, and then calculate the total cost of a customer's order. Write a Ruby
# program to solve this problem.

puts "
	  Idli:30
	  Dosa:40
	  Poori:45
	  Masaladosa:55
	  Chappathi:35
	  Tea:10
	  Coffee:15"
puts 'Your order please'
order = gets.chomp
sum = 0
while order != 'Done'
  # if order=='Dosa'
  # 	sum=sum+40
  # elsif order=='Idli'
  # 	sum=sum+30
  # elsif order=='Poori'
  # 	sum=sum+45
  # elsif order=='Chappathi'
  # 	sum=sum+35
  # elsif order=='Masaladosa'
  # 	sum=sum+55
  # end
  case order
  when 'Dosa'
    sum += 40
  when 'Idli'
    sum += 30
  when 'Poori'
    sum += 45
  when 'Masaladosa'
    sum += 55
  when 'Chappathi'
    sum += 35
  when 'Tea'
    sum += 10
  when 'Coffee'
    sum += 15
  end
  puts "\nAny item more"
  order = gets.chomp
end
puts "\nTotal price is #{sum}"

# menu_table = {

#   "dosa" => 40,

#   "idli" => 30,

#   "masaladosa" => 45,

#   "poori" => 35,

#   "chappathi"=>30

# }
# puts menu_table

# puts"Enter no of items"
# n=gets.chomp.to_i
# order = []
# puts "Enter item name"
# sum=0
# while n>0
#   num = gets.chomp
#   order.push(num)
#   n = n-1
# end
# order.each do|item|
# 	#puts item
# 	menu_table.each do |value|
# 		#puts value[0]
# 		if item==value[0]
# 			#puts value[0]
# 			sum+=value[1]
# 		end
# 	end
# end
# puts sum
