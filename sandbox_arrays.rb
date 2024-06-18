num_array = [1, 2, 3, 4, 5]
str_array = ['one', 'two', 'three', 'four', 'five']
array_from_frase = 'this is a frase'.split(' ')
array_with_fill = Array.new(5, 'fill')

complete_array = [num_array, str_array, array_from_frase, array_with_fill]

puts "render all arrays by elements"
for i in (0...complete_array.length)
    puts "array is #{i+1}"
    for j in complete_array[i]
        puts "element is #{j}"
    end
end