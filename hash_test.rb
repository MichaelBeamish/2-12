puts "Please enter your name."
name_input = gets.chomp
puts "Please enter your age."
age_input = gets.chomp
puts "Please enter your favorite food."
food_input = gets.chomp

my_hash = {"Name:" => name_input, "Age:" => age_input, "Food:" => food_input}

my_hash.each do |prompt, user_input|
	case prompt
		when "Name:"
			puts "This is #{user_input}."
		when "Age:"
			puts "He/She is #{age_input} years old."
		when "Food:"
			puts "His/Her favorite food is #{food_input}."
	end
end