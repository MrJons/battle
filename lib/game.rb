

class Game

  attr_reader :player1, :player2, :current_player, :other_player, :winner, :looser

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player2
    @other_player = @player1
    @winner = nil
    @looser = nil
  end

  def attack
    @other_player.be_attacked
    if @other_player.hit_points <= 0
      @looser = @other_player
      @winner = @current_player
    end
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
