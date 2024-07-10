# Create guesser.rb.  When this program starts, it asks you to think of a number from 1 to 100.  It then makes guesses.  You tell it whether the guess is too low, too high, or correct, until it guesses your number.  The program will need to keep track of the lowest and highest possible remaining values, and it should guess something between them.  The program should prompt you again if you say something besides "too low", "too high" or "correct".  The program should also handle the case where you are lying, and should call you out.  You are lying if the program correctly guesses the number, but you don't say so.  You are lying if you tell the program that its guess is too low, when it's really too high, or vice versa.  Of course, the program won't be able to tell right away that you are lying, as it will have to exhaust the possible answers.  Make the program efficient -- basically a binary search.  Once it guesses correctly, or figures out you are lying, it should prompt you to play again, exiting if you decline.


loop do
    # puts secret_number # Uncomment to get the output of the secret number

    puts "Think of a number between 1 and 100"

    low = 1
    high = 100

    while low <= high
      guess = (low + high) / 2
      puts "Is your number #{guess}? (too low / too high / correct)"
      response = gets.chomp.downcase

      if response == "correct"
        puts "Great! I guessed your number."
        break
      elsif response == "too low"
        low = guess + 1
      elsif response == "too high"
        high = guess - 1
      else
        puts "Respond with 'too low', 'too high', or 'correct'."
      end
      # Check if you are lying: if you say too low and then say too high (contradiction)
      if low > high
        puts "LIARRR!!!"
        break
      end
    end
    puts "Do you want to play again? (yes / no)"
    answer = gets.chomp.downcase
    break if answer == "no" 
end
    
puts "Thank you for playing! :)"


