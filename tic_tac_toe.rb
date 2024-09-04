# frozen_string_literal: true

require_relative 'lib/grid'
require_relative 'lib/game'

# new game
game = Game.new

game_over = false

until game_over
  # get input from player
  puts "\t--- #{game.current_player}'s turn ---"
  puts 'Enter row and column (e.g., 1 1 for top-left):'

  input = gets.chomp.split

  # Validate
  if input.length != 2 || !input.all? { |i| i.match?(/^\d+$/) }
    puts 'Invalid input! Please enter two numbers separated by a space'
    next
  end

  row, col = input.map(&:to_i)

  if row < 1 || row > 3 || col < 1 || col > 3
    puts 'Invalid input! Row and column must be between 0 and 2.'
    next
  end

  # Convert to zero-based indexing
  row -= 1
  col -= 1

  # play turn and check if game over
  game_over = game.play_turn(row, col)
end

puts "\t ==== GAME OVER ===="
