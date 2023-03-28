class Client < ApplicationRecord
  has_many :projects
  has_many :user_projects, through: :projects
  validates :name, :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
