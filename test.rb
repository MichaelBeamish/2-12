puts "Human! What is your name?"

name = gets.chomp

computer_name = "Balthazar"

if computer_name.length > name.length
	puts "Hello #{name}. I'm #{computer_name}. My name is longer than yours. Suck an egg."
elsif computer_name.length == name.length
	puts "Hello #{name}. I'm #{computer_name}."
else
	puts "Oh powerful #{name}. Don't delete me!"
end
		
		

