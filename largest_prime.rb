# the most important part is, the loop should up to the square root of given number
def prime?(number)
	return true if number == 2
	max = (Math.sqrt(number) + 1).to_i
	for i in 2..max
		return false if number % i == 0
	end
	true
end

max_factor, outbound = 1, (Math.sqrt(600851475143) + 1).to_i
for i in 5..outbound
	max_factor = i if 600851475143 % i == 0 && prime?(i) && max_factor < i
end
max_factor

# after refactor
require "prime"
max_factor, outbound = 1, (Math.sqrt(600851475143) + 1).to_i
for i in 5..outbound
	max_factor = i if 600851475143 % i == 0 && Prime.prime?(i) && max_factor < i
end
max_factor

# Or even
require 'mathn'
600851475143.prime_division.last[0]