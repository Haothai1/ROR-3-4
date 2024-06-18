puts "Hello, I'm a famous magican!"
puts "I can guess your number from 1 to 100!"

puts "Now I will try to guess your number!"
last_guess = 0
number_steps = 0
guess = 100/2
check_range = 0..100
while true
    number_steps += 1
    puts "Is your number #{guess}?"
    puts "anser 'higher', 'lower' or 'yes'"
    answer = gets.chomp
    if answer == 'higher'
        check_range = guess..check_range.last
        guess = guess + ((check_range.last-check_range.begin)/2).ceil
    elsif answer == 'lower'
        check_range = check_range.first..guess
        guess = guess - ((check_range.last-check_range.begin)/2).ceil
    elsif answer == 'yes'
        puts "I found your number in #{number_steps} steps!"
        puts "Do you want to play again (yes)?"
        if gets.chomp == "yes"
            last_guess = 0
            number_steps = 0
            guess = 100/2
            check_range = 0..100
            next
        else
            break
        end
    end
    
    if guess == last_guess
        puts "Sorry, but you are lying me and I don't wont play with you!"
        break
    end
    last_guess = guess
end