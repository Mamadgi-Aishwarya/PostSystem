class Question < ApplicationRecord
    belongs_to :user
    validates :title, :description ,presence:true
    validates :title, uniqueness:true
    validates :description, length: { minimum: 20 }
end
