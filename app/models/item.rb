class Item < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 140 }
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :price, presence: true, length: { minimum: 1, maximum: 1000 }
  validates :image_url, presence:true

  has_many :join_table_item_carts
  has_many :carts, through: :join_table_item_carts

  has_many :join_table_order_items
  has_many :orders, through: :join_table_order_items
end
