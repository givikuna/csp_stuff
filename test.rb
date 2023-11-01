a = 10
b = 10

Kernel::printf "%d and %d are equal! WOW!", a, b #=> 10 and 10 are equal! WOW!
Kernel::puts "\n"

print "a = #{a}\n" #=> a = 10

print ("Woie Zowie " * 3 + "hi!")[0...-3][0...-1] #=> Woie Zowie Woie Zowie Woie Zowie 
print "\n"

s = "Hello, World!"

print s.reverse + "\n" #=> !dlroW ,olleH

arr1 = [1, 8, 7]
arr2 = [3, 5, 9]

print (arr1 + arr2).sort.join('') + "\n" #=> 135789

print "Hi!\n".chomp + "\n" #=> Hi!

print "Enter your name: "
name = gets.chomp
print "Hey there #{name}!\n"

for i in (1..4)
    print i," " #=> 1 2 3 4 
end

Kernel::print "\n"

for i in (1...4)
    print i, " " #=> 1 2 3 
end

Kernel::print "\n"

Kernel::puts "same thing!" #=> same thing!

def factorial n
    if n < 0 then
        return -1
    end
    if n == 0 then
        return 1
    end
    return n * factorial(n - 1)
end

Kernel::puts "factorial of 5 is #{factorial 5}"

arr1.push factorial 5

puts arr1[0...-1].join " " #=> 1 8 7 

puts arr1.join " " #=> 1 8 7 120 

def add a, b
    return a + b
end

puts add 1, 2 #=> 3


def square n
    sum = 0
    for i in(1..n)
        sum = sum + n
    end
    return sum
end

odds = []
for i in (1..200)
    if i % 2 != 0 then
        odds.push i
    end
end

squares = Array.new 100

for i in (0...odds.length)
    squares.push square(i) + odds[i]
end

puts "[#{(squares.join ', ')[0..-1]}]"
