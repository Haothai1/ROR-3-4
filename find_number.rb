secret_number = rand(1..100)
number_steps = 0
while true
    puts "Enter a number from 1 to 100:"
    number = gets.to_i
    number_steps += 1
    if number == secret_number
        if number_steps == 1
            puts "You found correct number in 1 try! EXELENT!"
        else
            puts "You found correct number in #{number_steps} tries!"
        end
        puts "Do you want to play next game (yes)?"
        if gets.chomp == "yes"
            secret_number = rand(1..100)
            number_steps = 0
            next
        else
            puts "Goodbye!"
            break
        end
    elsif number < secret_number
        puts "Try bigger number"
    else
        puts "Try smaller number"
    end
end