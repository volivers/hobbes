class Hobby < ApplicationRecord
  #belongs_to :user
  has_many :bookings

  has_many :users, through: :bookings

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :level, presence: true
  validates :occupancy_limit, presence: true
end
