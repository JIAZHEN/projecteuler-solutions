def largest_product_in_series(number)
  array = number.to_s.split(//).map { |e| e.to_i}
  max_product = array[0..4].inject(:*)
  for i in 5..array.length
    product = array[i-4..i].inject(:*)
    max_product = product if max_product < product
  end
  max_product
end

for a in 1..1000
  for b in a+1..1000
    for c in b+1..1000
      next if (a + b + c) != 1000
      break if (a**2 + b**2) == c**2
    end
  end
end
