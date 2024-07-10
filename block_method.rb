def do_calc
  result = yield(7, 9)
  puts result
end

do_calc { |a, b| a + b }  # Output: 16
do_calc { |a, b| a * b }  # Output: 63