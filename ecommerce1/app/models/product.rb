class Product < ApplicationRecord
  has_many :customers 
  has_many :sales, through: :customers
end
