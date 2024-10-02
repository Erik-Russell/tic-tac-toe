# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new }

  describe '#initialize' do
    context 'when game is initialized' do
      it 'first player is "x"' do
        expect(game.current_player).to eq('X')
      end
    end
  end

  describe '#start_game'

  describe '#player_input'

  describe '#valid_input?'

  describe '#play_turn'
end
