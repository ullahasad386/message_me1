class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 20 },
            uniqueness: { case_sensitive: false }
  has_many :messages
  has_secure_password
  has_one_attached :avatar
end
