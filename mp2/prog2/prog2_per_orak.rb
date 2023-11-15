f = File.open "test.txt", "r"

arr = []

f.each_line do |line|
    arr << line.downcase.chomp.split(" ")
end

words = []

arr.each do |line|
    line.each do |word|
        words << word
    end
end

print words
puts
