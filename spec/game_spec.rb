require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) {described_class.new(player1, player2)}
  describe '#attack' do
    it 'Should attack opponent (10HP)' do
      expect(player2).to receive(:receives_damage)
      game.attack(player2)
    end
  end

end
