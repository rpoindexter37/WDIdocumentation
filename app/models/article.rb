class Article < ActiveRecord::Base
  belongs_to :user
  has_many :relationships
end
