require 'sinatra/base'
require_relative 'model'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_health = $player_2.hp
    erb(:play)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  post '/attack' do
    redirect '/play'
  end

  post '/reset' do
    player_2.hp = 100
    redirect '/play'
  end

  run! if app_file == $0
end
