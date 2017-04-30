require 'sinatra/base'
require 'sinatra/partial'
require 'sinatra/flash'
require 'data_mapper'
require_relative 'models/video'

class Rekt < Sinatra::Base

  get '/videos' do
    @videos = Video.all
    erb :'videos/index'
  end

  run! if app_file == $0
end
