# frozen_string_literal: true

def update_grid(grid, grid_hash, index_mapping)
  grid_hash.each do |key, value|
    row, col = index_mapping[key]
    grid[row][col] = value
  end
end
