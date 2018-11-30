class TimedLogsSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :time, :created_at
end
