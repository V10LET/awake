class EmotionalSerializer < ActiveModel::Serializer
    belongs_to :log
    attributes :rating, :note
end
