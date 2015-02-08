require 'game'

describe Game do

	let (:player1) { double :player, pick: :rock, object_id: 1 }
	let (:player2) { double :player, pick: :scissors, object_id: 2 }
	let (:game) { Game.new }

  before do
    game.add_player(player1)
    game.add_player(player2)
  end

  it "should allow two players to be added" do
  	expect(game.players.length).to be(2)
  end

  it "should be able to select a player by its object id" do
    expect(game.select_player_by_id(1)).to be(player1)
  end

  it "should know who has won the game" do
  	expect(game.winner).to be(player1)
  end

  it "should know when a game has been drawn" do
  	player3 = double :player, pick: :rock
  	game = Game.new
    game.add_player(player1)
    game.add_player(player3)
  	expect(game.winner).to eq("Draw!")
  end

end
