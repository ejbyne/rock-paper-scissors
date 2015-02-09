class RockPaperScissors < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, Proc.new { File.join(root, "..", "..", "public") }
  enable :sessions

	GAME = Game.new

	get '/' do
	  erb :index
	end

  get '/reset' do
    GAME = Game.new
  end

  run! if app_file == $0

end
