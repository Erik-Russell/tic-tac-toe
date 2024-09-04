# frozen_string_literal: true

# Grid - creates, updates and resets a 3x3 grid for playing a game such as Tic-Tac-Toe
class Grid
  attr_accessor :grid

  def initialize
    @grid = Array.new(3) { Array.new(3, ' ') }
  end

  def display
    puts "\n"
    @grid.each_with_index do |row, index|
      puts row.join(' | ')
      puts '---------' unless index == @grid.size - 1
    end
    puts "\n"
  end

  def reset
    puts "\tResetting..."
    @grid = Array.new(3) { Array.new(3, ' ') }
  end

  def player_move(mark, row, col)
    @grid[row][col] = mark
  end
end
