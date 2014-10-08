# http://www.mathblog.dk/project-euler-15/
# There is only one little note I want to make, even if it is a 20×20 grid, we have 21×21 grid points

def path(n)
  # initalise the grid with boundary conditions
  row = Array.new(n+1){1}
  n.times do
    (1..n).each do |i|
      # Effects a Pascal-style addition of each number at each corner
      # to produce the final number of paths hitting the end.
      row[i] = row[i] + row[i-1]
    end
  end
  return "A #{n} by #{n} grid has #{row[-1]} paths"
end