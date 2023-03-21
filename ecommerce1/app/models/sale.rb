class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  # after_commit :reduce_count, on:
end
