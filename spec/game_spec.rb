require 'game.rb'

describe Game do

  describe "#attack" do
    it "reduces opponent hit points when attacked" do
      player1 = spy("player1")
      player2 = spy("player2")
      game = Game.new(player1, player2)
      game.attack(player2)
      expect(game.player2).to have_received(:be_attacked)
    end
  end
end
