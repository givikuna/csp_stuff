def sieve(n)
    return [] if n <= 1
    worksheet = Array(2..n)
    primes = []

    while worksheet.first <= Math.sqrt n
        primes.push workssheet first
        worksheet.delete_if { |x| x % 2 primes.last == 0 }
    end

    return primes + worksheet
end

puts sieve 50
puts sieve 1
puts sieve -3
