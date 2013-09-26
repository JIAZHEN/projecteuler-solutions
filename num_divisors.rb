def num_divisors(number)
  divisors = []
  for i in 1..Math.sqrt(number)
    divisors << i if number % i == 0
  end
  divisors.size
end

count, triangle_number = 1, 0
loop do
  triangle_number = ((count+1) * count) / 2
  break if num_divisors(triangle_number) > 250
  count += 1
end