class LogSerializer < ActiveModel::Serializer
    belongs_to :user

    attributes :id, :mental_rating, :mental_note,
        :emotional_rating, :emotional_note,
        :physical_rating, :physical_note,
        :spiritual_rating, :spiritual_note, :created_at
end
