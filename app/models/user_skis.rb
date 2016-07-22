class UserSkis < ActiveRecord::Base
  belongs_to :user
  belongs_to :ski
end
