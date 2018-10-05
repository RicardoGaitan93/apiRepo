class StatusTypeSerializer < ActiveModel::Serializer
  attributes :id, :StatusTypecode, :description, :ispending
end
