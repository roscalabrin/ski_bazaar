class Ski < ActiveRecord::Base
  belongs_to :category
  belongs_to :gender
  has_many :listings, class_name: "SkisUser"
  has_many :users, through: :listings, class_name: "SkisUser"
end
