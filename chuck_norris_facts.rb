require 'faker'

puts "Just real stories about Chuck Norris"
while true
    puts "\n "
    puts Faker::ChuckNorris.fact
    puts "\nOne more (yes)?"
    if gets.chomp != 'yes'
        puts "\nGood bye!"
        break
    end
end