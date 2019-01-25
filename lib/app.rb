require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'secret af'
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    session[:count] ||= 0
    @health = (100 - session[:count])
    erb(:play)
  end

  post '/names' do
    session.clear
    session[:player_1] = params[:player_1].capitalize
    session[:player_2] = params[:player_2].capitalize
    redirect '/play'
  end

  post '/attack' do
    session[:count] += 10
    redirect '/play'
  end

  post '/reset' do
    session[:count] = 0
    redirect '/play'
  end

  run! if app_file == $0
end
