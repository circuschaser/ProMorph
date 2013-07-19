class Genre < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :pieces
  has_many :composers

end
