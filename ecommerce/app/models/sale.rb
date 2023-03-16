class Sale < ApplicationRecord
  has_many :customers, through: :products
  has_many :products
end
