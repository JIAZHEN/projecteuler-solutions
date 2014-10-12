# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

class Fixnum
  def fac
    (2..self).inject(:*)
  end

  def sum_fac
    fac.to_s.split('').map{|e| e.to_i}.inject(:+)
  end
end

p 100.sum_fac