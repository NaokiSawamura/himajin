class Tweet < ApplicationRecord
  belongs_to :user, optional: true

  validates :content, length: { in: 1..100 }  
end
