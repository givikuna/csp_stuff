arr = []
File.open("test.txt", "r").each_line { |line| arr << line.downcase.chomp.split(" ") }

word = []
arr.each { |line| line.each { |word| words << word } }

h = Hash.new
words.each { |word| h[word] += 1 if h.key?(word) else h[word] = 1 }
h.sort_by { |_key, value| value }

h.each { |key, value| puts "The word #{key} appears #{value} times" }

puts "Total word count: #{words.length}"
puts "Total unique words: #{h.keys.length}"
