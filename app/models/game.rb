class Game

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  
end
