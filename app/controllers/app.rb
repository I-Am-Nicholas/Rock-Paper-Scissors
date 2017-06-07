require 'sinatra/base'
require './app/models/game.rb'
require './app/models/computer.rb'
require './app/helpers/RPS-helpers'

class RPS < Sinatra::Base
  helpers RPSHelpers

  enable :sessions
  set :root, '/Users/Hyper/GIT/RPS/app'
  set :public, '/Users/Hyper/GIT/RPS/public'

  get '/' do
    erb :index, :layout => true
  end

  post '/storage' do
    session[:p1]=params[:NAME]
    session[:p2]=0
    redirect '/welcome'
  end

  get '/welcome' do
    @player = session[:p1]
    erb :play1
  end

  get '/play' do
    player_choice()
    new_game()
    @count = session[:p2]
    erb @game.result
  end

end
