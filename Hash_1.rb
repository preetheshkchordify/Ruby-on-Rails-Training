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
  item<5
end
new_Array2=new_Array1.reduce{|sum,val|
      sum+=val
      }
puts new_Array2


input.each_with_index do |value,index|
  if value >8
    puts "Index value is #{index}"
    break
  end
end

