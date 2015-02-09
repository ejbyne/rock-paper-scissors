class RockPaperScissors < Sinatra::Base

  post '/singleplayer/registration' do
    erb :'singleplayer/registration'
  end

  post '/singleplayer/new' do
    GAME.add_player(Player.new(params[:player_name]))
    GAME.add_player(Computer.new('Computer'))
    erb :'singleplayer/game'
  end

  post '/singleplayer/result' do
    pick = params[:choice].to_sym
    GAME.players[0].picks(pick)
    GAME.players[1].picks
    @winner = GAME.winner
    erb :'singleplayer/result'
  end

  post '/singleplayer/restart' do
    erb :'singleplayer/game'
  end

end