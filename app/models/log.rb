class Log < ApplicationRecord
    belongs_to :user
    has_one :mental
    has_one :emotional
    has_one :physical
    has_one :spiritual
end
