require 'sinatra/base'
require_relative 'model'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2
    p 'play'
    p $player_1
    p $player_2
    p $player_1_name
    p @player_1_name
    p $player_2_health
    p @player_2_name
    p @player_2_health
    erb(:play)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    p params

    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_health = $player_2.hp
    p 'post'
    p $player_1
    p $player_2
    p $player_1.name
    p @player_1_name
    p $player_2.name
    p @player_2_name
    p @player_2_health
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
