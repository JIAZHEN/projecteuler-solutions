# Starting in the top left corner of a 2×2 grid, 
# and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

def move(x, y, results, grid_size)
  if x != grid_size
    results = move(x+1, y, results, grid_size)
  end

  if y != grid_size
    results = move(x, y+1, results, grid_size)
  end

  results += 1 if x == grid_size && y == grid_size
  results
end