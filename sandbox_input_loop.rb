# puts "Enter a message: "
# message = gets
# puts "Your message is: #{message}"


puts "Enter a number from 1 to 5:"
grade = ''
loop do
    grade = gets
    if grade.to_i > 0 && grade.to_i < 6
        break
    else
        puts "Enter a number from 1 to 5:"
    end
end
did_i_pass = case grade.to_i 
    when 5 then 'your grade is EXELLENT'
    when 4 then 'your grade is GOOD'
    when 3 then 'your grade is NORMAL'
    when 2 then 'your grade is NOT GOOD'
    when 1 then 'your grade is BAD'
    else 'your grade is NOT PASSED'
end

puts "Your grade is: #{did_i_pass}"

puts 'Do you want to continue?'
while gets.chomp != "yes" do
    puts "type just 'yes'!"
  end

  puts "\n  print all alphabet"
for i in ('a'..'z')
    puts i
end

puts "\nfrom 5 to 10"
for i in 5.upto(10)
    puts i
end

puts "\nfrom 10 to 1"
for i in 10.downto(1)
    puts i
end