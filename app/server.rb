require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/game'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    erb :index
  end

  post '/registration' do
    erb :registration
  end

  post '/newgame' do
    @player = Player.new(params[:player_name])
    @computer = Computer.new('Computer')
    GAME = Game.new(@player, @computer)
    erb :game
  end

  post '/restartgame' do
    erb :game
  end

  post '/result' do
    choice = params[:choice].to_sym
    GAME.player1.picks(choice)
    GAME.player2.picks
    @winner = GAME.winner?
    erb :result
  end

  run! if app_file == $0
end
