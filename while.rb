attnd = []
name = ""

while true do
	if attnd.last != "Jake"
		puts "Please enter your name."
		name = gets.chomp
		attnd.push(name)
	else
		break
	end
end

puts attnd.join(", ")