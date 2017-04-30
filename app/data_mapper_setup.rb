require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/game'
require_relative 'models/video'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/rekt_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
