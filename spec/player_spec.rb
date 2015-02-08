require 'player'

describe Player do

	let (:player) { Player.new("Ed") }

  it "should be initialized with a name" do
    expect(player.name).to eq("Ed")
  end

  it "should be able to pick a weapon" do
    player.picks(:rock)
    expect(player.pick).to be(:rock)
  end

  it "should be able to reset his or her pick" do
  	player.reset_pick
  	expect(player.pick).to be(false)
  end

end
