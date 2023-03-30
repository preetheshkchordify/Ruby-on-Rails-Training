class UserRoleSerializer < ActiveModel::Serializer
  attributes :id, :username, :rolename

  def username
    object.user.name
  end
  def rolename
    object.role.name
  end
end
