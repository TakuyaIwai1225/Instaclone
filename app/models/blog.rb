class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  mount_uploader :image, ImageUploader  
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140, message: '140字以内で入力してください' }
end