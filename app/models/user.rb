class User < ApplicationRecord
  #has_many :questions, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, presence:true, uniqueness:true
  has_secure_password
end
