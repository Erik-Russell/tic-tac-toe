# frozen_string_literal: true

require_relative '../lib/game'

describe Game do # rubocop:disable Metrics/BlockLength
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

  describe '#valid_input?' do # rubocop:disable Metrics/BlockLength
    context 'when input is valid' do
      it 'returns true' do
        input = %w[1 1]
        expect(game.valid_input?(input)).to be true
      end
    end
    context 'when input is too long' do
      it 'return false' do
        input = %w[1 1 1]
        expect(game.valid_input?(input)).to be false
      end
    end

    context 'when input is too short' do
      it 'return false' do
        input = %w[1]
        expect(game.valid_input?(input)).to be false
      end
    end

    context 'when input contains a number that is not 1, 2, or 3' do
      it 'return false' do
        input = %w[1 6]
        expect(game.valid_input?(input)).to be false
      end
    end

    context 'when input contains a non integer' do
      it 'return false' do
        input = %w[a 6]
        expect(game.valid_input?(input)).to be false
      end
    end
  end

  describe '#play_turn'
end
