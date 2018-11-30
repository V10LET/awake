class UserSerializer < ActiveModel::Serializer
    has_many :logs
    has_many :timed_logs
    attributes :id, :name, :email, :birthday, :avatar

end
