class Question < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, :description ,presence:true
    validates :title, uniqueness:true
    validates :description, length: { minimum: 20 }
end
