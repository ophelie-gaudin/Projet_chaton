class Cart < ApplicationRecord
  has_one :user
  has_many :join_table_item_carts
  has_many :items, through: :join_table_item_carts
end
