class Ski < ActiveRecord::Base
  belongs_to :category
  belongs_to :gender
  has_many :listings
  has_many :users, through: :listings
end
