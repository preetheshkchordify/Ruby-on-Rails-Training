class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :userroles
  def userroles
    object.roles.pluck(:name)
  end
end
