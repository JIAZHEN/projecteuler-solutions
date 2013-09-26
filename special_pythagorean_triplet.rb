# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def solution(n)
	for a in 1..n/2
	  for b in a+1..n/2
	  	c = 1000 - a - b
	    return a*b*c if (a**2 + b**2) == c**2
	  end
	end
end


