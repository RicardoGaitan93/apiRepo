class UserSerializer < ActiveModel::Serializer
  attributes :id, :Usercode, :name, :nickname, :email
end
