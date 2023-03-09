# frozen_string_literal: true

# A company wants to track the performance of its employees based on their
# sales data. The sales data is given in the form of an array of hashes, where
# each hash represents the sales data forone employee. Each hash has the
# following keys: name, sales_target, actual_sales, and commission_rate. The
# company wants to calculate the following statistics:1.The total sales for
# each employee (actual sales + commission).2.The percentage of sales achieved
# by each employee (actual sales / sales target * 100).3.The names of the
# employees who did not meet their sales target.Write a program in Ruby that
# takes the sales data array and outputs a new array of hashes with the
# following keys: name, total_sales, sales_percentage, and target_met. The
# target_metkey should be trueif the employee met their sales target, and
# falseotherwise.

sales = [{ name: 'Aju', sales_target: 10_000.0, actual_sales: 4000.0, commision_rate: 30 },
         { name: 'Saju', sales_target: 12_000.0, actual_sales: 5000, commision_rate: 35 },
         { name: 'Raju', sales_target: 11_000.0, actual_sales: 4500.0, commision_rate: 33 },
         { name: 'Baiju', sales_target: 7000.0, actual_sales: 7000.0, commision_rate: 20 }]

total_sale = 0
percent = 0
nam = ''
output = []
sales.each do |value|
  nam = value[:name]
  total_sale = value[:commision_rate] + value[:actual_sales]
  percent = value[:actual_sales] / value[:sales_target] * 100
  target_met = if value[:sales_target] != value[:actual_sales]
                 'true'
               else
                 'false'
               end

  hash = {
    name: nam,
    total_sale: total_sale,
    sales_percentage: percent,
    target_met: target_met
  }
  output.push(hash)
  # puts output
end
puts output
