class Favorite < ApplicationRecord
  belongs_to :user
  has_many :items
end
