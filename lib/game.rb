class Game

	attr_reader :player1, :player2

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@pairs = { rock: :scissors, scissors: :paper, paper: :rock }
	end

	def winner
		return "Draw!" if @player1.pick == @player2.pick
		@pairs[@player1.pick] == @player2.pick ? @player1 : @player2
	end

end
