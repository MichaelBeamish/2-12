puts "Give me a Noun, Verb, and Adverb."

user_response = []

while user_response.length < 3 do
	response = gets.chomp
	user_response.push(response)
end

puts "Noun is #{user_response[0]}, verb is #{user_response[1]}, adverb is #{user_response[2]}."