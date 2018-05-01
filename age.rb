puts "When were you born?"
puts "Enter year as an integer:"
year  = gets.chomp.to_i
puts "Enter month as an integer:"
month = gets.chomp.to_i
puts "Enter day as an integer:"
day   = gets.chomp.to_i

#Unix Epoch is when the Coordinated Universal Time (UTC) began.
#00:00:00 was Thursday, 1 January 1970.
#Seconds since Unix Epoch at birth...
birth_time    = Time.new(year, month, day).to_i

age_in_second = Time.now.to_i - birth_time

#Great! We have your age in seconds but it will display without commas and will be difficult to read.
# Let us add some commas.

# Convert our seconds variable into an array and reverse it so the index of zero starts with the lowest number.
age_in_second_array = age_in_second.to_s.split("").reverse

# Create a new array to push our integers and commas into.
age_in_second_array_with_commas = []

# Create a counting variable to keep track of when to add a comma.
position = 0

# For each of the items in our array do...
age_in_second_array.each do |i|

	if position == 3
		position = 1
		age_in_second_array_with_commas.push(",")
		age_in_second_array_with_commas.push(i)
	else
		position += 1
		age_in_second_array_with_commas.push(i)
	end
end

puts "You are " + age_in_second_array_with_commas.reverse.join("") + " seconds old."

remainder_sec = age_in_second  % 60
remainder_min = age_in_second  / 60 % 60
remainder_hr  = age_in_second  / 60 / 60 % 24
remainder_day = age_in_second  / 60 / 60 / 24 % 365
remainder_yr  = age_in_second  / 60 / 60 / 24 / 365

earth_float   = (age_in_second.to_f    / 60 / 60 / 24 / 365).round(4)
mercury_float = (365.26  / 87.97              * earth_float).round(4)
venus_float   = (365.26  / 224.7              * earth_float).round(4)
mars_float    = ((365.26 / (365.26 * 1.88))   * earth_float).round(4)
jupiter_float = ((365.26 / (365.26 * 11.86))  * earth_float).round(4)
saturn_float  = ((365.26 / (365.26 * 29.46))  * earth_float).round(4)
uranus_float  = ((365.26 / (365.26 * 84.01))  * earth_float).round(4)
neptune_float = ((365.26 / (365.26 * 164.79)) * earth_float).round(4)
pluto_float   = ((365.26 / (365.26 * 248.59)) * earth_float).round(4)

puts ""
puts "This is your current age to the second:"
puts remainder_yr.to_s  + " years"
puts remainder_day.to_s + " days"
puts remainder_hr.to_s  + " hours"
puts remainder_min.to_s + " minutes"
puts remainder_sec.to_s + " seconds"
puts ""
puts "This is how old you would be on all the planets:"
puts "Mercury - " + mercury_float.to_s + " orbits old."
puts "Venus -   " + venus_float.to_s   + " orbits old."
puts "Earth -   " + earth_float.to_s   + " orbits old."
puts "Mars -    " + mars_float.to_s    + " orbits old."
puts "Jupiter - " + jupiter_float.to_s + " orbits old."
puts "Saturn -  " + saturn_float.to_s  + " orbits old."
puts "Uranus -  " + uranus_float.to_s  + " orbits old."
puts "Neptune - " + neptune_float.to_s + " orbits old."
puts "Pluto -   " + pluto_float.to_s   + " orbits old."