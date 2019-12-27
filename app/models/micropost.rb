class Micropost < ApplicationRecord
  belongs_to :user
  has_many :reverses_of_relationship, class_name: 'Favorite', foreign_key: 'user_id'
  has_many :favorite,dependent: :destroy
  validates :content, presence: true, length: {maximum: 255}
end
