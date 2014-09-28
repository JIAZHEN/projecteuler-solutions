# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'set'

class Fixnum
  def prime?
    return false if self == 1
    for i in 2..Math.sqrt(self)
      return false if self % i == 0
    end
    true
  end
end

def larget_prime_factor_of(number)
  max = 1
  for i in 1..Math.sqrt(number)
    max = i if number % i == 0 && i.prime?
  end
  max
end

p larget_prime_factor_of(600_851_475_143)