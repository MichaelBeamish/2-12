puts "Enter a number between 1-10."
input_num = gets.chomp.to_i

arr = []

until input_num == 0 do
	puts input_num * 2
	arr.push(input_num * 2)
	input_num-=1
end

puts arr.join