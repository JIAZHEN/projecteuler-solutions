# the most important part is, the loop should up to the square root of given number
def gcd(x,y)
	y == 0 ? x : gcd(y, x%y)
end

def lcm(x,y)
	x * y / gcd(x,y)
end

def smallest_multiply(max)
	(1..max).reduce(1) { |result, n| result = lcm(result,n) }
end

# concise:
require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."

# one-line solution:
(1..20).to_a.inject(:lcm)