class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :is_active
end
