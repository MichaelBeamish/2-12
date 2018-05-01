puts "Enter in your grades for each of the 5 assignments."

puts "Enter for assignment 1:"
grade1 = gets.chomp.to_f
puts "Enter for assignment 2:"
grade2 = gets.chomp.to_f
puts "Enter for assignment 3:"
grade3 = gets.chomp.to_f
puts "Enter for assignment 4:"
grade4 = gets.chomp.to_f
puts "Enter for assignment 5:"
grade5 = gets.chomp.to_f
final_grade = (grade1 + grade2 + grade3 + grade4 + grade5)/5

puts "Your final grade is #{final_grade}."

if final_grade >= 60
	puts "You passed!"
else
	puts "You flunked!"
end
		