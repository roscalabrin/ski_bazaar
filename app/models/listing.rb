class Listing  < ActiveRecord::Base
  belongs_to :user
  belongs_to :ski

  validates :price, presence:     true,
                    numericality: true
  validates :image, presence:     true
end
