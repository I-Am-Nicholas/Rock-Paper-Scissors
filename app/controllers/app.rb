require 'sinatra/base'
require './app/models/players.rb'
require './app/models/game.rb'
require './app/models/computer.rb'
require './app/helpers/RPS-helpers'

class RPS < Sinatra::Base
  helpers RPSHelpers

  enable :sessions
  set :root, '/Users/Hyper/GIT/RPS/app'

  get '/' do
    erb :index, :layout => true
  end

  post '/storage' do
    session[:p1]=params[:NAME]
    redirect '/welcome'
  end

  get '/welcome' do
    @player = session[:p1]
    erb :play1
  end

  get '/play2' do
    erb :play2
  end

  get '/play' do
    button_pressed()
    new_game()
    erb @game.result
  end

end
