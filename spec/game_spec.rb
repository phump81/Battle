require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'inflicts damage' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
   it 'retrieves the first player' do
     expect(game.player_1).to eq player_1
   end
 end

 describe '#player_2' do
   it 'retrieves the second player' do
     expect(game.player_2).to eq player_2
   end
 end

 describe '#current turn' do
   it 'starts with player 1' do
     expect(game.current_turn).to eq player_1
   end
 end

 describe '#switch turns' do
   it 'switches turn to other player' do
     game.switch_turns
     expect(game.current_turn).to eq player_2
   end
 end

end
