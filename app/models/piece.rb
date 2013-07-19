class Piece < ActiveRecord::Base
  attr_accessible :album, :composer, :genre, :title

  belongs_to :genre
  belongs_to :composer
  belongs_to :album
  
end
