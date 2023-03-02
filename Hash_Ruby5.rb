# frozen_string_literal: true

# 11. You have a list of usernames and passwords stored in a hash in your Ruby program. You need to create a login function that accepts a username and password as parameters and checks if they match the values in the hash. If the username and password are valid, the function should return "Login Successful". Otherwise, it should return "Invalid username or password".

# 	users = {

# 	  "user1" => "pass1",

# 	  "user2" => "pass2",

# 	  "user3" => "pass3"

# 	}

#  users=[

#   { username: "user1", password: "pass1" },

#   { username: "user2", password: "pass2" },

#   { username: "user3", password: "pass3" },

# ]

users = [

  { username: 'user1', password: 'pass1' },

  { username: 'user2', password: 'pass2' },

  { username: 'user3', password: 'pass3' }

]

puts 'Enter username'
uname = gets.chomp
puts 'Enter password'
pswd = gets.chomp
flag = 0

users.each do |value|
  next unless value[:username] == uname && value[:password] == pswd

  puts 'Login successful'
  flag += 1
  break
end
puts 'Invalid credential' if flag.zero?
