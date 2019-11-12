class Comment < ApplicationRecord
  belongs_to :user

  validates :content, length: { in: 1..100 } 
end
