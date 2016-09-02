require 'game.rb'

describe Game do

# before(:each) do
#   @player1 = spy("player1")
#   @player2 = spy("player2")
#   @game = Game.new(player1, player2)
# end

  describe "#attack" do
    it 'reduces the other players hitpoints when attacked' do
      other_player = spy("other_player")
      current_player = spy("current_player")
      game = Game.new(current_player, other_player)
      game.attack
      expect(game.other_player).to have_received(:be_attacked)
    end
  end

  describe '.change_turns' do
    it 'starts off on player 2 as currenty player.' do
      player1 = spy("player1")
      player2 = spy("player2")
      game = Game.new(player1, player2)
      expect(game.current_player).to eq(game.player2)
    end

    it 'switches the current player when called.' do
      player1 = spy("player1")
      player2 = spy("player2")
      game = Game.new(player1, player2)
      game.switch_turns
      expect(game.current_player).to eq(game.player1)
    end
  end
end
