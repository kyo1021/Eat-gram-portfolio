class Shop < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :users, through: :favorites
  attachment :image

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end
