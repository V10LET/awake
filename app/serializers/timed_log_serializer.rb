class TimedLogSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :time, :created_at
end
