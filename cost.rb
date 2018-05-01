puts "Thank you for dinner! How much did it cost pre tip?"

# .tr translates the first characters to the second character in the parentheses
# with the code below $12,405.09 becomes 12405.09
input_cost = gets.chomp.tr('$', '').tr(',', '').to_f

#finds 18% of initial cost
tip = input_cost * 0.18

#adds 18% to initial cost
total_plus_tip = input_cost + tip

#converts the floats to strings with 2 decimal places...
tip = sprintf "%.2f", tip
total_plus_tip = sprintf "%.2f", total_plus_tip

puts "A tip of 18% will be $" + tip + "."
puts "The total cost will be $" + total_plus_tip + "."