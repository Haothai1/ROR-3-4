def get_array
    result = []
    for i in 1..100
        if i % 2 == 0 || i % 3 == 0 || i % 5 == 0
            result.push(i)
        end
    end
    return result
end

get_array.each do |i|
  puts i
end