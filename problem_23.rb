# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. 
# For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n 
# and it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, 
# the smallest number that can be written as the sum of two abundant numbers is 24. 
# By mathematical analysis, it can be shown that 
# all integers greater than 28123 can be written as the sum of two abundant numbers. 
# However, this upper limit cannot be reduced any further by analysis even though 
# it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

require 'set'
class Fixnum
  def divisors
    results = Set.new [1]
    (2..Math.sqrt(self)).each { |n| results.add(n).add(self / n) if self % n == 0 }
    results.to_a
  end

  def abundant?
    self.divisors.inject(:+) > self
  end
end

abundant_numbers = (12..28123).select { |n| n.abundant? }

results = Set.new
for i in 0...abundant_numbers.size
  for j in 0...abundant_numbers.size
    sum = abundant_numbers[i] + abundant_numbers[j]
    results.add(sum) if sum <= 28123
  end
end

p ((1..28123).to_a - results.to_a).inject(:+)