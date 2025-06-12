require "terminal_table"

# Create a nested array representing a grid
grid = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# Iterate through the grid and print each row
grid.each do |row|
  puts row.join(" ")  # Join elements of the row with a space
end