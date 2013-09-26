# the most important part is, the loop should up to the square root of given number
def largest_paldr_prod(digits)
	min, max, larget_prod = 10 ** (digits-1), ("9" * digits).to_i, 0
	for i in min..max-1
		for j in i+1..max
			product = (i * j)
			larget_prod = product if product.to_s.reverse == product.to_s && larget_prod < product
		end
	end
	larget_prod
end