def freq(xs, k)
    count = 0
    xs.each do |x|
        count += 1 if x == k
    end
    return count
end

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

unique_words = words.clone.to_set.to_a

unique_words.each do |word|
    puts "The word #{word} appears #{freq words.clone, word} times"
end

puts "Total word count: #{words.length}"
puts "Total unique words: #{unique_words.length}"
