class Game

	attr_reader :players

	def initialize
		@players = []
		@pairs = { rock: :scissors, scissors: :paper, paper: :rock }
	end

	def add_player(player)
		@players.push(player)
	end

	def select_player_by_id(id)
		@players.select { |player| player.object_id == id }.first
	end

	def winner
		return "Draw!" if @players[0].pick == @players[1].pick
		@pairs[@players[0].pick] == @players[1].pick ? @players[0] : @players[1]
	end

end
