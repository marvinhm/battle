require 'player'

describe Player do

  describe 'name' do
    it 'Should return player name' do
      player_name = Player.new("Tim")
      expect(player_name.name).to eq("Tim")
    end
  end

end
