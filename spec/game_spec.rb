require 'game'

describe Game do

	let (:player1) { double :player, pick: :rock }
	let (:player2) { double :player, pick: :scissors }
	let (:game) { Game.new(player1, player2) }

  it "should be initialized with two players" do
  	expect(game.player1).to be(player1)
  	expect(game.player2).to be(player2)
  end

  it "should know who has won the game" do
  	expect(game.winner).to be(player1)
  end

  it "should know when a game has been drawn" do
  	player3 = double :player, pick: :rock
  	game = Game.new(player1, player3)
  	expect(game.winner).to eq("Draw!")
  end

end
