class Product < ApplicationRecord
  belongs_to :sale
  has_many :customers
end
