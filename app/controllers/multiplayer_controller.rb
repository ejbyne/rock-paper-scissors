class RockPaperScissors < Sinatra::Base

  post '/multiplayer/registration' do
    erb :'multiplayer/registration'
  end

  post '/multiplayer/new' do
  	add_player
    erb :'multiplayer/game'
  end

  post '/multiplayer/choice' do
    pick = params[:choice].to_sym
    current_player.picks(pick)
    redirect '/multiplayer/waiting'
  end

  get '/multiplayer/waiting' do
    redirect '/multiplayer/result' if GAME.ready?
    erb :'multiplayer/waiting'
  end

  get '/multiplayer/result' do
    @winner = GAME.winner
    erb :'multiplayer/result'
  end

  post '/multiplayer/restart' do
    current_player.next_attempt
    erb :'multiplayer/game'
  end

end
