require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

#   get '/' do
#     'Testing infrastructure working!'
#   end

#   get '/player' do 
#     erb :index
#   end 

get '/' do
    erb :index
end

#   get '/start' do 
#     erb :index
#   end 

  post '/names' do 
    # "#{params[:player1]} vs #{params[:player2]}" 
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :player
  end 

  # start the server if ruby file executed directly
 run! if app_file == $0
end