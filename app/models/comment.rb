class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :question
    validates :message,presence:true,length: { minimum: 5 } 
end
