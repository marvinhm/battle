class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end


  def attack(player)
    player.receives_damage
  end

  def switch_turns
    if @current_turn == @player1
      @current_turn = @player2
    else
      @current_turn = @player1
    end
  end

  def opponent
    if @current_turn == @player1
      return @player2
    else
      return @player1
    end
  end
end
