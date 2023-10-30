odds = []
for i in (0...100)
    odds << (2 * i + 1)
end

squares = []
squares << 1
for i in (1...odds.length)
    squares << (odds[i] + squares[i - 1])
end

print squares

=begin
puts "[#{((((1..200)
    .to_a
    .select { |n| n % 2 != 0 })
    .map.with_index  {|n, i| square(i) + n })
    .join ', ')[0..-1]}]" # this is better
=end
