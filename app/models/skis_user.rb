class SkisUser  < ActiveRecord::Base
  belongs_to :user
  belongs_to :ski
end
