# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def rule(n)
  n.even? ? n/2 : (3*n + 1)
end

def collatz_seq(n)
  result = [n]
  while n != 1
    n = rule(n)
    result << n
  end
  result
end

starting, max_size, target = 1, 0, starting
while starting < 1_000_000
  seq = collatz_seq(starting)
  max_size, target = seq.size, starting if max_size < seq.size
  starting += 1
end

puts "The starting number with longest chain is #{target}, length of the chain is #{max_size}"