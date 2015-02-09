class RockPaperScissors < Sinatra::Base

	def current_player
		GAME.select_player_by_id(session[:me])
	end

	def add_player
	  player = Player.new(params[:player_name])
	  session[:me] = player.object_id
	  GAME.add_player(player)
	end

end
