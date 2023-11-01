def d(t)
    return (3600 / t).to_i
end

print "time in seconds: "
puts "#{d gets.chomp.to_i}mph"
