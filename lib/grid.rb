# frozen_string_literal: true

# Grid - creates, updates and resets a 3x3 grid for playing a game such as Tic-Tac-Toe
class Grid
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
  end

  def display
    puts "\n"
    @board.each_with_index do |row, index|
      puts row.join(' | ')
      puts '-' * 9 unless index == @board.size - 1
    end
    puts "\n"
  end

  def reset
    puts "\tResetting..."
    @board = Array.new(3) { Array.new(3, ' ') }
  end

  def player_move(mark, row, col)
    return false unless @board[row][col] == ' '

    @board[row][col] = mark
    true
  end

  def full?
    @board.flatten.none? { |cell| cell == ' ' }
  end
end
