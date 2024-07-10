# Program 3
# Create find_number.rb.  You use the built-in Ruby random number generator.  The following returns a value from 1 to 100 inclusive:

# secret_number = rand(1..100)
# The program should do the following:

# It generates a random number from 1 to 100.
# In a loop, it prompts you for a guess. What you enter will be a string. So you convert it to an integer with the to_i method of the string class.

secret_number = rand(1..100)

loop do
    # puts secret_number # Uncomment to get the output of the secret number
    puts "Guess a number between 1 and 100"
    guess = gets.chomp.to_i

    # If your guess is correct, it exits the loop, and asks you if you want to play again. If so, it starts with a new random number. If not, it exits the program.
    # It tells you whether your guess is too high, too low, or correct.
    if guess > secret_number
        puts "Too high"
    elsif guess < secret_number
        puts "Too low"

    # If your guess is correct, it exits the loop, and asks you if you want to play again. If so, it starts with a new random number. If not, it exits the program.
    elsif guess == secret_number
        puts "Do you want to play again?"
        answer = gets.chomp.capitalize
        if answer == "No"
            puts "Bye bye!"
            exit
        elsif answer == "Yes"
            secret_number = rand(1..100)

        # Be sure you handle the case where the guess is not a number. The to_i method would return 0 in this case, so the program should say that the guess is invalid.
        else
            puts "Invalid guess. Try again!"
        end
    end
end
    


