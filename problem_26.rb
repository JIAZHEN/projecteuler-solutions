# A unit fraction contains 1 in the numerator. 
# The decimal representation of the unit fractions with denominators 2 to 10 are given:

# 1/2 =   0.5
# 1/3 =   0.(3)
# 1/4 =   0.25
# 1/5 =   0.2
# 1/6 =   0.1(6)
# 1/7 =   0.(142857)
# 1/8 =   0.125
# 1/9 =   0.(1)
# 1/10  =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

def recurring_cycle(n)
  quotient = (1.0/n).to_s
  return nil if quotient.size < 18
  dec = quotient.split('.')[1]
  size = dec.size
  (0..size).each do |f|
    (1..(size-f)/2).each do |l|
      return dec[f...f+l].size if dec[f...f+l] == dec[f+l...(f+2*l)]
    end
  end
  nil
end

max_cycle, d, max_d = 0, 0, 0
while d < 1000
  cycle = recurring_cycle(d)
  if cycle && max_cycle < cycle
    max_cycle, max_d = cycle, d
  end
  d += 1
end
p max_d