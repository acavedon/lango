class Note < ActiveRecord::Base
  validates :title, :length => 3..255, :presence => true
  validates :body, :presence => true
end
