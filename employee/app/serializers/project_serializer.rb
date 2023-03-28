class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_type, :is_active, :users
  def users
    object.users.pluck(:name)
  end
end
