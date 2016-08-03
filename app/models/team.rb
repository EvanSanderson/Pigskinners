class Team < ActiveRecord::Base
  has_many :players, dependent: :destroy
  validates :name, presence: true
  belongs_to :user
end
