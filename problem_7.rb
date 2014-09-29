# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

class Fixnum
  def prime?
    return false if self == 1
    for i in 2..Math.sqrt(self)
      return false if self % i == 0
    end
    true
  end
end

def prime_number(ordinal)
  return 2 if ordinal == 1
  candidate, ordinal = 1, ordinal - 1 # exclude 2
  while ordinal > 0
    candidate += 2 # all primes are ODD except 2
    ordinal -= 1 if candidate.prime?
  end
  candidate
end

p prime_number(10_001)