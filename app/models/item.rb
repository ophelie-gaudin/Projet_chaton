class Item < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 140 }
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :price, presence: true, length: { minimum: 1, maximum: 1000 }
  validates :image_url, presence:true
end
