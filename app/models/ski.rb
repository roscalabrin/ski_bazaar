class Ski < ActiveRecord::Base
  belongs_to :category
  belongs_to :gender
  has_many :user_skis
  has_many :users, through: :user_skis
end
