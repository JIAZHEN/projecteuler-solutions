# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
def palindrome?(number)
  number.to_s == number.to_s.reverse
end

max_palindrome = 0
for i in 100...999
  for j in i+1..999
    product = i * j 
    max_palindrome = product if palindrome?(product) && max_palindrome < product
  end
end
p max_palindrome
