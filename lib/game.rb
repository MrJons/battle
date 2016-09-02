

class Game

  attr_reader :player1, :player2, :current_player, :other_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player2
    @other_player = @player1
  end

  def attack
    @other_player.be_attacked
  end

  def switch_turns
    if @current_player == @player1
      @current_player = @player2
      @other_player = @player1
    else
      @current_player = @player1
      @other_player = @player2
    end
  end

end
