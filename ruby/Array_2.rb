a = ['cat', 2, 'dog', 'tiger', 4, 9, 'lion', 10]

# #15.1 Fetch all integer elements from the above array

puts"all integer elements from the above array"
a.each do |val|
  if val.is_a?Integer
    puts val
  end
end

# #15.2 Find the index of all string elements from the array


puts"index of all string elements"
a.each_with_index do |value,index|
  if value.is_a?String
    puts index
  end
end

# #15.3 Total count of elements from the array

puts"Total count of elements"
puts a.length

# #Check if 'leopard' is present in the array

puts"Check leopard in array"
puts a.include?('leopard')

# #Return all elements having vowels

puts"Return all elements having vowels"
a1=a.reject do |item|
  item.is_a?Integer
end
vowels=['a','e','i','o','u']
a1.each do |val|
  vowels.each do |value|
    if val.include?(value)
      puts val
      break
    end
  end
end




# #15.6 Compute the sum of all integer elements in the array and push the sum to the array


puts"Compute the sum of all integer elements"
sum=0
a1=a.reject do |item|
  item.is_a?String
  end
a2=a1.sum
a1.push(a2)
puts a1


# #15.7 Fetch the last 3 elements from the array

puts "last 3 elements : #{a.last(3)}\n\n"


# #Replace all vowels in the array with '$' symbol
puts"Replace all vowels in the array with '$' symbol"
a1=a.reject do |item|
  item.is_a?Integer
end
a1.each do |chara|
    c = chara.gsub(/[aeiou]/i, '$')
    puts "#{c}"
end



# #15.9 Check whether first and last element are the same


if a.first==a.last
  puts"First and last elements are same"
else
  puts"Not same"
end

# 15.10 Reverse the array
a1=a.reverse
puts "reverse array is #{a1}"

# Delete element @ index 2

a.delete_at(2)
puts"#{a}"


