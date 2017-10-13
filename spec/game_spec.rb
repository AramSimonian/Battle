require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  it 'allows one player to be attacked by the other' do
    allow(player2).to receive(:receive_attack)
    game.attack(player2)
  end

  it 'a new game should receive two parameters' do
    expect(Game).to receive(:new).with(player1, player2)
    Game.new(player1, player2)
  end
end
