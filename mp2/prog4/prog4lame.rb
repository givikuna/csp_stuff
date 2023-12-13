def isPrime(n)
  return false if n < 1
  return true if n == 2
  i = 2
  while i < Math.sqrt(n) + 1
    return false if n % i == 0
    i += 1
  end
  return true
end

h = Hash.new
h.store(0, 0)

pos = 1
prime_number = 2

while pos < 101
  if isPrime(prime_number)
    h.store(pos, prime_number)
    pos += 1
  end
  prime_number += 1
end

p h
