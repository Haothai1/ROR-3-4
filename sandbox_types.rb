name = 'voldem'
name_cap = name.capitalize
puts "Hello, #{name_cap}!"

puts "is contains 'golden' in name? #{name.include?('golden')}"
puts "is contains 'olde' in name? #{name.include?('vold')}"

name_down = name_cap.downcase
puts "capitalize name now is downcased: #{name_down}"

puts "name length is #{name.length}"
puts "name reverse is #{name.reverse}"
puts "name upcase is #{name.upcase}"

converted_name = name.tr(name, '345712698')

puts "name converted to numbers #{converted_name}"
puts "back name to normal view #{converted_name.tr('345712698', name)}"

puts "name part is #{name[3..5]}"
puts "letters from name 1,3,5 #{name.split('')[0]}, #{name.split('')[2]}, #{name.split('')[4]}"

crypted_name = name.crypt('some_salt')

puts "convert name #{name} to some crypt #{crypted_name}"

puts "\n\n HERE WILL WORK WITH NUMBERS \n "

num1 = 5
num2 = 3
num3 = 2
num4 = 10

puts "sum of #{num1} and #{num2} is #{num1 + num2}"
puts "exponent #{num1} to #{num2} to #{num3} is #{num1**num2**num3}"
puts "division #{num4} to #{num2} is #{num4 / num2}"
puts "same division but with floats #{num4.to_f} to #{num2.to_f} is #{num4.to_f / num2.to_f}"
puts "get module of #{num4} to #{num2} is #{num4 % num2}"
puts "get module of #{num4} to #{num3} is #{num4 % num3}"