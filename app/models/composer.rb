class Composer < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :pieces
  has_many :albums
  
end
