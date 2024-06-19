# I wrote current solution and probably understand what I made, 
# but I can't see potential and where I need to use it.
# maybe in multithreading programming, but it is my assumptions...

def do_calc
    return yield()
end

puts do_calc { |a,b| 7 + 9}
puts do_calc { |a,b| 7 * 9}