class EmailConfigSerializer < ActiveModel::Serializer
  attributes :id, :EmailConfigcode, :server, :port, :useremail, :passwordemail
end
