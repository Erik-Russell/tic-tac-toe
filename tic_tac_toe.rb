# frozen_string_literal: true

require_relative 'lib/grid'

# new game
game_board = Grid.new

# display new board
game_board.display

# EXAMPLE FILLER ----------------------
game_board.player_move('X', 1, 1)
game_board.player_move('O', 0, 0)
game_board.player_move('X', 0, 1)

# display board with moves
game_board.display

# new game
game_board.reset

game_board.display
