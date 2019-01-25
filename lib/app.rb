require 'sinatra/base'
require_relative 'model'

class Battle < Sinatra::Base
  set :session_secret, 'secret af'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $new_game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $new_game.player_1.name.capitalize
    @player_2_name = $new_game.player_2.name.capitalize
    @player_2_health = $new_game.player_2.hp
    @current_player = $new_game.current_turn.name.capitalize
    erb(:play)
  end

  post '/attack' do
    $new_game.attack($new_game.player_2)
    $new_game.switching_turns
    redirect '/play'
  end

  # post '/reset' do
  #   @player_2_health = 100
  #   redirect '/play'
  # end

  run! if app_file == $0
end
