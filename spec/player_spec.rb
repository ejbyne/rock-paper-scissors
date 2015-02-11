require_relative '../app/models/player'

describe Player do

	let (:player) { Player.new("Ed") }

  it "should be initialized with a name" do
    expect(player.name).to eq("Ed")
  end

  it "should be able to pick a weapon" do
    player.picks(:rock)
    expect(player.pick).to be(:rock)
  end

  it "should know if he or she has not picked" do
    expect(player).not_to be_picked
  end

  it "should know if he or she has picked" do
    player.picks(:rock)
    expect(player).to be_picked
  end

  it "knows his or her number of attempts" do
    expect(player.attempt).to eq(1)
    player.next_attempt
    expect(player.attempt).to eq(2)
  end

  it "sets picked to false when starting the next attempt" do
    expect(player).not_to be_picked
  end

end
