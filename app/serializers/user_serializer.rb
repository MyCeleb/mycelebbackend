class UserSerializer < ActiveModel::Serializer
  attributes :id , :username , :email , :role , :phone_number
  has_one :profile
end
