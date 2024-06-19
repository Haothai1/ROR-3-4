# here I tried write method with using tr, but I leave this idea 
# because I wrote very long and stupid code without any sence. 
# I leave few simple realizations
# I didn't realize check for uppercase, but I can if it needed.

def hangman(some_word, array_letters)
    final_string = ""
    for i in 0..some_word.length-1
        if array_letters.include?(some_word[i])
            final_string += some_word[i]
        else
            final_string += "_"
        end
    end
    return final_string
end

def hangman2(some_word, array_letters)
    word_as_array = some_word.split("")
    final_word = []
    word_as_array.each { |i| 
            if array_letters.include?(i)
                final_word.push(i)
            else
                final_word.push("_")
            end
        }
    return final_word.join("")
end

# current solution can work just with a unique symbols in the word
# it's a hash table where key must be unique, so letters can't be double
def hangman3(some_word, array_letters)
    word_hash = {}
    letters_hash = {}
    some_word.split("").each{ |item| word_hash[item] = item }
    array_letters.each{ |item| letters_hash[item] = item }
    word_hash.each do |key, value| 
        if letters_hash[key] != value
            word_hash[key] = "_"
        end
    end
    puts word_hash.values.join("")
end

puts "\nSolution using HASH"
puts hangman3('voldem', ["v","o", "m"])
puts hangman3("alphabet", ["a", "h"])

puts "\nSolution using ARRAY"
puts hangman2('voldem', ["v","o", "m"])
puts hangman2("bob", ["b"])
puts hangman2("alphabet", ["a", "h"])


puts "\nSolution using STRING"
puts hangman('voldem', ["v","o", "m"])
puts hangman("bob", ["b"])
puts hangman("alphabet", ["a", "h"])

