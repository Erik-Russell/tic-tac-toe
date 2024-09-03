# frozen_string_literal: true

require_relative 'lib/create_new_grid'
require_relative 'lib/display_grid'
require_relative 'lib/map_indexes'
require_relative 'lib/update_grid'

# declare variables
variable_names = %w[a1 a2 a3 b1 b2 b3 c1 c2 c3]

# create a blank grid
grid = create_new_grid

# create index map
index_map = map_indexes

# Map grid elements to variable names using a hash
grid_hash = {}
grid.flatten.map.with_index do |_, index|
  grid_hash[variable_names[index]] = ''
end

# EXAMPLE FILLER ----------------------
grid_hash['a2'] = 'X'

# Update grid from hash
update_grid(grid, grid_hash, index_map)

display_grid(grid)
