def divisible
  (1..100).select { |num| num % 2 == 0 || num % 3 == 0 || num % 5 == 0 }
end

puts divisible