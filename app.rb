require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    if @game.finished?
      redirect '/results'
    else
      erb :play
    end
  end

  post '/attack' do
    @game = Game.instance
    @game.attack(@game.opponent)
    @game.switch_turns
    redirect '/play'
  end

  get '/results' do
    @game = Game.instance
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
