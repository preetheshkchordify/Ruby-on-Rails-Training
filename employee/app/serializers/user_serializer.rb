class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :location, :experience, :department, :designation
  def userroles
    object.roles.pluck(:name)
  end
  def designation
    object.designation&.name
  end
end
