# frozen_string_literal: true

require_relative 'lib/grid'

# new game
game_board = Grid.new

# display new board
game_board.display

# EXAMPLE FILLER ----------------------
game_board.grid[1][1] = 'X'
game_board.grid[0][2] = 'O'
game_board.grid[0][1] = 'X'

# display board with moves
game_board.display

# new game
game_board.reset

game_board.display
