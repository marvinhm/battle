require 'player'

describe Player do

  describe '#name' do
    it 'Should return player name' do
      player_name = Player.new("Tim", )
      expect(player_name.name).to eq("Tim")
    end
  end


  describe '#receive_damage' do
    it 'reduces the player hit points' do
      player = Player.new("Tim")
      expect { player.receives_damage }.to change { player.hp }.by(-10)
    end
  end

end
