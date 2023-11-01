arr = []

r = rand(100)
for i in (0...r)
    arr.push rand 50
end

puts arr.length

length = arr.length

sum = 0
while arr.length != 0
    sum += arr.delete_at 0
end

avg = sum / length

puts avg
print arr
puts

# puts (0...(rand 100)).to_a.reduce(:+) / 100
