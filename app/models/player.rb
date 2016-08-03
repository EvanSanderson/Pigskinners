class Player < ActiveRecord::Base
  belongs_to :team
  validates :name, presence: true
  belongs_to :user
end
