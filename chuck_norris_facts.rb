require 'faker'

loop do
  print "Do you want to know a fact about Chuck Norris? (yes/no): "
  answer = gets.chomp.downcase
  break if answer != "yes"
  
  puts Faker::ChuckNorris.fact
end