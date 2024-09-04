# frozen_string_literal: true

require_relative 'grid'

# Game - manage turns, check for wins, handle overall game flow
class Game
  def initialize
    @grid = Grid.new
    @current_player = 'X' # this or initialize logic for players
  end

  def play_turn(row, col)
    if @grid.player_move(mark, row, col)
      if check_winner
        puts "#{@current_player} wins!"
      else
        switch_player
      end
    else
      puts 'Invalid move! Try again.'
    end
  end

  def check_winner
    # logic to check for winner using @grid
  end

  def switch_player
    @current_player = @current_player == 'X' ? 'O' : 'X'
  end
end
