require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    params.to_s
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    erb :team
  end

end
