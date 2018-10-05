class ReportTypeSerializer < ActiveModel::Serializer
  attributes :id, :ReportTypecode, :description, :isusernecessary
end
