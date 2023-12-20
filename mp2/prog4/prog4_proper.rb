def isPrime(n)
  if n < 1
    return false
  end
  i = 2
  while i < Math.sqrt(n) + 1
    if n % i == 0
      return false
    end
    i++
  end
  return true
end

h = Hash.new
h.store(0, 0)

position = 1
prime = 2
while pos < 101
  if isPrime(prime)
    h.store(position, prime)
    pos += 1
  end
  prime += 1
end

print h
puts
