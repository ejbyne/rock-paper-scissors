require_relative '../app/models/computer'

describe Computer do

	let (:computer) { Computer.new("Computer") }

	it "should be initialized with a name" do
		expect(computer.name).to eq("Computer")
	end

	it "should be able to pick a random weapon" do
		computer.picks
		expect([:rock, :paper, :scissors].include?(computer.pick)).to be(true)
	end

end
