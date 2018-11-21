class UserSerializer < ActiveModel::Serializer
    has_many :logs
    attributes :id, :name, :email, :birthday, :avatar
end
