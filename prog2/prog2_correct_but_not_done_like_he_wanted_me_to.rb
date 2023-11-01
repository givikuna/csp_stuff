puts "[ #{((((1..200)
    .to_a
    .select { |n| n % 2 != 0 })
    .map.with_index  {|n, i| square(i) + n })
    .join ', ')[0..-1]} ]"
