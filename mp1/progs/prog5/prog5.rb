def celsius(n)
    return ((n - 32) * (5 / 9)).to_i
end

def farenheit(n)
    return ((n * (9 / 5)) + 32).to_i
end

print "f to c: "
puts "The temperature in Celsius is: #{celsius gets.chomp.to_i}"

print "c to f: "
puts "The temperature in Farenheit is: #{farenheit gets.chomp.to_i}"
