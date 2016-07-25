class Ski < ActiveRecord::Base
  belongs_to :category
  belongs_to :gender
  has_many :listings
  has_many :users, through: :listings

  validates :name, :brand, :width, :length, :gender_id, :category_id, presence: true

  validates :name, uniqueness: { scope: [:brand, :width, :length, :gender_id, :category_id] }
end
