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

h = Hash.new

words.each do |word|
    if h.key? word
        h[word] += 1
    else
        h[word] = 1
    end
end

h.sort_by { |_key, value| value }

h.each { |key, value| puts "The word #{key} appears #{value} times" }

puts "Total word count: #{words.length}"
puts "Total unique words: #{h.keys.length}"
