class Article < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :title, length: { minimum: 1 }
	validates :body, length: { minimum: 1 } 
  has_many :comments
end
