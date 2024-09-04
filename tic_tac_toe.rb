# frozen_string_literal: true

require_relative 'lib/grid'
require_relative 'lib/game'

# new game
game = Game.new

game_over = false

until game_over
  # get input from player
  # example:
  puts 'Enter row and column (e.g., 0 0 for top-left):'
  row, col = gets.chomp.split.map(&:to_i)

  # play turn and check if game over
  game_over = game.play_turn(row, col)
end
