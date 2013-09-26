def prime?(number)
  return true if number == 2
  max = (Math.sqrt(number) + 1).to_i
  for i in 2..max
    return false if number % i == 0
  end
  true
end

class PrimeEnumerator < Enumerator
  def initialize
    super() do |yielder|
      n = 2

      loop do 
        yielder.yield n if prime?n
        n += 1
      end
    end
  end
end

# others
require 'mathn'
primes = Prime.new
10_000.times { primes.next }
puts "Prime is #{ primes.next }."

# concise
require 'prime'
x = Prime.take(10001)
puts x.last