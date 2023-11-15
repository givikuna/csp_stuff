f = File.open "test.txt", "r"

txt = ""

f.each_line do |line|
    txt += line + " "
end

arr = txt.split " "

print arr
puts
