require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  it 'allows one player to be attacked by the other' do
    allow(player2).to receive(:receive_attack)
    game.attack(player2)
  end

end
