f = File.open "haii.txt", "r"

f.each_line do |line|
	puts line
end
