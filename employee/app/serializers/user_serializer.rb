class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username
  def userroles
    object.roles.pluck(:name)
  end
end
