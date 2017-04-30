require 'sinatra/base'
require 'sinatra/partial'
require 'sinatra/flash'
require 'data_mapper'
require_relative 'models/video'

class Rekt < Sinatra::Base

  post '/videos' do
    Video.create(title: params[:title], url: params[:url])
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
