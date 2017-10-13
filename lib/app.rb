require 'sinatra/base'
require './lib/player'
require './lib/game.rb'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))

    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name

    erb(:play)
  end

  get '/view_hit_points' do
    @player_1_hit_points = $game.player1.hit_points
    @player_2_hit_points = $game.player2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name

    erb :attack
  end

  post '/attack' do
    $game.attack($game.player2)
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    @player_2_hit_points = $game.player2.hit_points

    erb :attack
  end

  run! if app_file == $0
end
