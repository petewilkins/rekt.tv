class Video

  include DataMapper::Resource

  has n, :games, through: Resource

  property :id, Serial
  property :title, String
  property :url, String

end
