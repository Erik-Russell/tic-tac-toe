# frozen_string_literal: true

def display_grid(grid)
  grid.each_with_index do |row, index|
    puts row.join(' | ')
    puts '--------' unless index == grid.size - 1
  end
end
