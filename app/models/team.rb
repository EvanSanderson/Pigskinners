class Team < ActiveRecord::Base
  has_many :players, dependent: :destroy
  validates :name, presence: true
end
