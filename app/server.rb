require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    erb :index
  end

  post '/registration' do
    erb :registration
  end

  post '/game' do
    erb :game
  end

  post '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
