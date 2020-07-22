require 'player'

describe Player do

  subject(:paul) { Player.new('Paul') }
  subject(:ralph) { Player.new('Ralph') }

  describe '#name' do
    it 'returns the name of a player' do
      expect(paul.name).to eq("Paul")
    end
  end

  describe '#hit points' do
    it 'displays hit points' do
      expect(ralph.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { ralph.receive_damage }.to change { ralph.hit_points }.by(-10)
    end
  end
end
