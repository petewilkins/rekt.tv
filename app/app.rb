require 'sinatra/base'
require 'sinatra/partial'
require 'sinatra/flash'
require 'data_mapper'

class Rekt < Sinatra::Base

  get '/' do
    "Hello World"
  end

  run! if app_file == $0
end
