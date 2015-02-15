class Game

	attr_reader :players

	PAIRS = { rock: :scissors,
						scissors: :paper,
						paper: :rock }

	def initialize
		@players = []
	end

	def add_player(player)
		@players.push(player)
	end

	def select_player_by_id(id)
		@players.select { |player| player.object_id == id }.first
	end

  def ready?
  	@players.length == 2 && @players[0].picked? && @players[1].picked? && @players[0].attempt == @players[1].attempt
  end

	def winner
		return "Draw!" if @players[0].pick == @players[1].pick
		PAIRS[@players[0].pick] == @players[1].pick ? @players[0] : @players[1]
	end

end
