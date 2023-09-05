class Item < ApplicationRecord
  belongs_to :favorite, optional: true
end
