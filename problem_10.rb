# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'mathn'

sum = Prime.instance.inject(0) do |sum, n|
        break sum if n >= 2_000_000
        sum + n
      end

p sum 