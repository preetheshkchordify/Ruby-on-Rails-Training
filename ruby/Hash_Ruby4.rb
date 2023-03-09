# frozen_string_literal: true

# 8. A music festival wants to keep track of the number of people attending
# each of its stages. The attendance data is stored in an array of arrays,
# where each inner array contains the name of the stage and the number of
# people attending. The festival wants to find out which stage had the
# highest attendance and how many people attended that stage.

# Initialize -

# attendance_data = [

#   ["Main Stage", 5000],

#   ["Rock Stage", 3000],

#   ["Dance Stage", 7000],

#   ["Acoustic Stage", 2000]

# ]

# Output required - Dance Stage had the highest attendance with 7000 people.

attendance_data = [
  ['Main stage', 5000],
  ['Rock stage', 3000],
  ['Dance stage', 7000],
  ['Acoustic stage', 2000]
]
max_value = 0
name = ''
attendance_data.each do |value|
  if value[1] > max_value
    max_value = value[1]
    name = value[0]
  end
end
puts "#{name} had the highest attendance with #{max_value} people"
