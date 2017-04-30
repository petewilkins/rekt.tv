require 'data_mapper'
require 'dm-postgres-adapter'

class Video

  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

end

DataMapper.setup(:default, "postgres://localhost/rekt_test")
DataMapper.finalize
DataMapper.auto_upgrade!
