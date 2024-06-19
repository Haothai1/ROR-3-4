main_hash = Hash.new

def add_record_to_hash(main_hash, key, value)
    main_hash[key] = value
end

def print_structure(some_hash)
    all_keys = some_hash.keys
    all_values = some_hash.values
    puts "\nlist of all keys:"
    puts all_keys
    puts "\nlist of all values:"
    puts all_values
end

while true
    if main_hash.length > 4
        puts "all data entered, thank you"
        break
    end
    puts "\nYou have enter #{5 - main_hash.length} items."
    puts "Enter key name:"
    key_name = gets
    puts "Enter value data:"
    value_data = gets
    add_record_to_hash(main_hash, key_name,value_data)
end

print_structure(main_hash)