response = ""

until response.include?("fine") || response.include?("yes") || response.include?("sure") do
	puts "Can we go to Itchy and Scratchy Land?"
	response = gets.chomp.downcase
end

puts "Yay!"