class Piece < ActiveRecord::Base
  attr_accessible :album, :composer, :genre, :title
end
