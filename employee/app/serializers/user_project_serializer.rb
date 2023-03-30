class UserProjectSerializer < ActiveModel::Serializer
  attributes :id, :username, :projectname

  def username
    object.user.name
  end

  def projectname
    object.project.name
  end
end
