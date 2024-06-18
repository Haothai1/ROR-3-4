user_data = Hash.new()
puts "Enter your first name: "
user_data[:first_name] = gets.chomp

puts "Enter your last name: "
user_data[:last_name] = gets.chomp

puts "Enter your age: "
user_data[:age] = gets.chomp.to_i

puts "Enter your street address: "
user_data[:street_address] = gets.chomp

puts "Enter your city: "
user_data[:city] = gets.chomp

puts "Enter your state: "
user_data[:state] = gets.chomp

puts "\n\nCheck entered user data"
for key, value in user_data
    puts "#{key.to_s.tr("_"," ").capitalize}: #{value}"
end

puts "\n*** FIXING DATA ***"
user_data[:first_name] = user_data[:first_name].capitalize
user_data[:last_name] = user_data[:last_name].capitalize
user_data[:city] = user_data[:city].capitalize
user_data[:state] = user_data[:state].upcase
array_words = user_data[:street_address].split(' ')
for i in (0...array_words.length)
    array_words[i] = array_words[i].capitalize
end
user_data[:street_address] = array_words.join(' ')

puts "data fixed!"
puts "\n============================="
puts "\nCheck fixed user data \n"
for key, value in user_data
    puts "#{key.to_s.tr("_"," ").capitalize}: #{value}"
end