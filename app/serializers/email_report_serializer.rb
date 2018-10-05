class EmailReportSerializer < ActiveModel::Serializer
  attributes :id, :to, :cc, :title, :body, :type, :attachment
end
