include IterationLab

array = TestArray.new 100

def sum(arr)
    n = 0
    arr.each { |m| n += m }
    return n
end

def avg(arr)
    return sum(arr) / arr.length
end

print avg array
puts
