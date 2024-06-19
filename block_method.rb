# I hope it's solution is right, but I am still can't understand 
# where I can use it... I understand, I am watching world throught paradigm of JS, where 
# didn't used blocks and I hope it will changed with practice

def do_calc
    return yield(7,9)
end

puts do_calc { |a,b| a + b}
puts do_calc { |a,b| a * b}