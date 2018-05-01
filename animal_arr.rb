arr = ["wird", "cat", "worm", "dog", "grandpa"]
fav_animal = "worm"
boolean = false


arr.each do |arr_obj|
	puts arr_obj
	if arr_obj == fav_animal
		boolean = true
		puts "I love #{arr_obj}s!"
	end	
end

if boolean == false
	puts "I don't like any of those animals."
end