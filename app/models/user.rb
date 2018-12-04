class User < ApplicationRecord
    has_secure_password
    has_many :logs
    has_many :timed_logs

    validates :email, uniqueness: { case_sensitive: false }
    validates :name, :email, :birthday, :password, presence: true
end
