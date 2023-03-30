class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_type, :is_active, :users, :client
  def users
    object.users.pluck(:name)
  end
  def client
    object.client.name
  end
end
