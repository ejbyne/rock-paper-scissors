require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/game'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new { File.join(root, "views") }
  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions

  GAME = Game.new

  get '/' do
    erb :index
  end

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

  post '/multiplayer/registration' do
    erb :'multiplayer/registration'
  end

  post '/multiplayer/new' do
    player = Player.new(params[:player_name])
    session[:me] = player.object_id
    GAME.add_player(player)
    erb :'multiplayer/game'
  end

  post '/multiplayer/choice' do
    pick = params[:choice].to_sym
    player = GAME.select_player_by_id(session[:me])
    player.picks(pick)
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
    player = GAME.select_player_by_id(session[:me])
    player.reset_pick
    player.next_attempt
    erb :'multiplayer/game'
  end

  get '/reset' do
    GAME = Game.new
  end

  run! if app_file == $0
end
