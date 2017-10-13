require 'player'

describe Player do
  let(:fake_name) { 'player_with_no_name' }
  subject(:player) { described_class.new(fake_name) }
  it 'returns name' do
    expect(player).to respond_to(:name)
  end
end
