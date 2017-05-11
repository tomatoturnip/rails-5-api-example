class User < ApplicationRecord
  validates_presence_of :name, :email, :password_digest

  # encrypt password
  has_secure_password

  has_many :todos, foreign_key: :created_by
end
