class UserSerializer < ActiveModel::Serializer
    has_many :logs
    attributes :name, :email, :birthday, :avatar
end
