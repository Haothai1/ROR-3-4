person = {}

puts "Enter your first name."
firstname = gets.chomp.capitalize
person[:first_name] = firstname

puts "Enter your last name." 
lastname = gets.chomp.capitalize
person[:last_name] = lastname

puts "Enter your age." 
age = gets.chomp
person[:age] = age

puts "Enter your street address." 
streetaddress = gets.chomp
person[:street_address] = streetaddress

puts "Enter your city." 
city = gets.chomp.capitalize
person[:city] = city

puts "Enter your state."
state = gets.chomp.upcase
person[:state] = state

puts "Person information:"
puts person



