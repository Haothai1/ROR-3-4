class Sum1
    attr_accessor :total
    def initialize(a, b)
        @total = a + b
    end
end

class Sum2
    def initialize(a, b)
        @a = a
        @b = b
    end

    def new_total
        res = @a + @b
        return res
    end
end

sum1 = Sum1.new(5,6)
sum2 = Sum2.new(5,6)

puts "\nresult from class Sum1"
puts sum1.total

puts "\nresult from class Sum2"
puts sum2.new_total

