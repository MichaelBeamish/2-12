puts "Enter a number between 1 and 100."

computer_number = rand(1..100).to_i

while true

	input_number = gets.chomp.to_i	

	if input_number == computer_number
		puts "Spot on!"
		puts "My number is also #{computer_number}!"
		break
	elsif (computer_number - 5..computer_number + 5).include? input_number
		puts "Wow! So close!"
	else
		puts "Not even close."
	end

end