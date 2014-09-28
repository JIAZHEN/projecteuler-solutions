# The sum of the squares of the first ten natural numbers is,
# power(1,2) + power(2,2) + ... + power(10,2) = 385

# The square of the sum of the first ten natural numbers is,
# power((1 + 2 + ... + 10),2) = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

bound, sum = 100, 0

for i in 1...bound
  for j in i+1..bound
    sum += 2 * i * j
  end
end

p sum