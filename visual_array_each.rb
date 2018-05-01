#Array:
box = ["item_1", "item_2", "item_3", "item_5", "item_5"]

#Below will sort through each item in the array...
box.each do |item_in_box|
	#Below is what happens each time a new item is selected.
	#In this case, it will print the item on the command line. 
	puts item_in_box
end