require 'bcrypt'
class User < ApplicationRecord
  validates :name, presence: true
  validates :username, uniqueness: true
  has_many :plants

  has_secure_password

  # def password=(value)
  #   self.password_digest = BCrypt::Password.create(value)
  # end
  #
  # def authenticate(plaintext_password)
  #   BCrypt::Password.new(self.password_digest) == plaintext_password
  # end
end
