ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/partial'
require 'sinatra/flash'
require 'data_mapper'
require_relative 'models/video'
require_relative 'models/game'
require_relative 'data_mapper_setup'

class Rekt < Sinatra::Base

  post '/videos' do
    video = Video.new(title: params[:title], url: params[:url])
    game = Game.first_or_create(name: params[:game])
    video.games << game
    video.save
    redirect '/videos'
  end

  get '/videos' do
    @videos = Video.all
    erb :'videos/index'
  end

  get '/videos/new' do
    erb :'videos/new'
  end

  run! if app_file == $0
end
