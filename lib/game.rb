# frozen_string_literal: true

require_relative 'grid'

# Game - manage turns, check for wins, handle overall game flow
class Game
  def initialize
    @grid = Grid.new
    @current_player = 'X' # this or initialize logic for players
  end

  def play_turn(row, col)
    if @grid.player_move(@current_player, row, col)
      @grid.display
      if check_winner
        puts "#{@current_player} wins!"
        return true # Indicate game is over
      elsif @grid.full?
        puts "It's a draw!"
        return true
      else
        switch_player
      end
    else
      puts 'Invalid move! Try again.'
    end
    false # Indicate game continues
  end

  private

  def switch_player
    @current_player = @current_player == 'X' ? 'O' : 'X'
  end

  def check_winner
    check_rows || check_columns || check_diagonals
  end

  def check_rows
    @grid.board.any? do |row|
      row.uniq.length == 1 && row.first != ' '
    end
  end

  def check_columns
    @grid.board.transpose.any? do |col|
      col.uniq.length == 1 && col.first != ' '
    end
  end

  def check_diagonals
    left_to_right = [@grid.board[0][0], @grid.board[1][1], @grid.board[2][2]]
    right_to_left = [@grid.board[0][2], @grid.board[1][1], @grid.board[2][0]]

    [left_to_right, right_to_left].any? do |diag|
      diag.uniq.length == 1 && diag.first != ' '
    end
  end
end
