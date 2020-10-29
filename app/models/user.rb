class User < ApplicationRecord
  #has_many :questions, dependent: :destroy
  has_many :questions
  has_many :comments
  validates :name, presence:true, uniqueness:true
  has_secure_password
end
