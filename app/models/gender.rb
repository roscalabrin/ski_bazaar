class Gender < ActiveRecord::Base
  has_many :skis

  validates :name, presence: true
  validates_uniqueness_of :name, on: :create
end
