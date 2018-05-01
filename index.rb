puts "Type a sentence NOW!"

input_sentence = gets.chomp

puts "Now what is your favorite word in that sentence?"

input_fav = gets.chomp

fav_location = input_sentence.index(input_fav)

if fav_location == nil
	puts "Your favorite word doesn't exist is that sentence."
else
	puts "Your favorite word begins at index " + fav_location.to_s + " and ends at " + (fav_location + input_fav.length - 1).to_s + "."
end
