class Product < ApplicationRecord
   validates :name, presence: true
  has_and_belongs_to_many :carts
  has_and_belongs_to_many :orders
end
