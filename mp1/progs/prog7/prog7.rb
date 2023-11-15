def bmi(m, h) # Imperial
    return (m * 1.0 / (h ** 2)) * 703
end

def bmi2(m, h) # Metric
    return m / (h ** 2)
end

print "height (in): "
height = gets.chomp.to_i
print "weight (lb): "
weight = gets.chomp.to_i

puts "Your BMI is: #{bmi2(weight * 0.453592, height * 0.0254)}"
puts "Your BMI is #{bmi(weight, height)}"
