class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence:true, length: {minimum: 5, maximum: 150}
  validates :body, presence:true, length: {minimum: 5, maximum: 1200}
end
