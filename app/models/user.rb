class User < ActiveRecord::Base
  has_secure_password
  has_many :listings
  has_many :skis, through: :listings

  validates :username, :password, presence: true
  validates_uniqueness_of :username, message: "The username you selected is already in use. Please choose another username."

end
