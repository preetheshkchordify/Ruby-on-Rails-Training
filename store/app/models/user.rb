class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role

  def admin?
  role.name == 'Admin'
  end
  def seller?
  role.name == 'Seller'
  end

  def regular?
  role.name == 'Regular'
  end
end
