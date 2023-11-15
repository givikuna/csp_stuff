def sieve(n)
    worksheet = *(2..n)
    primes = []
    while worksheet.first < Math.sqrt(n)
        primes << worksheet.first
        worksheet.delete_if { |x| x % primes.last == 0 }
    end
    return primes + worksheet
end

primes = [0] + sieve(542)

h = Hash.new
primes.length.times do |i|
    h[i] = primes[i]
end

p h
