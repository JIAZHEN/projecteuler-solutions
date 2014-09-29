# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# power(a,2) + power(b,2) = power(c,2)
# For example, power(3,2) + power(4,2) = 9 + 16 = power(5,2) = 25.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
perimeter = 1000

product = 0
for a in 3..perimeter-3
  for b in a+1..(perimeter-1-a)/2
    c = perimeter - a - b
    if (a ** 2 + b ** 2) == c ** 2
      product = a * b * c
      break
    end
  end
end

p product