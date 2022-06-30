class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :shops, dependent: :destroy
  has_many :favorites
  has_many :fav_shops, through: :favorites, source: :shop

  validates :username, presence: true

  def liked_by?(shop_id)
    favorites.where(shop_id: shop_id).exists?  
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.password_confirmation = user.password
      user.username = 'ゲストさん'
    end
  end
end
