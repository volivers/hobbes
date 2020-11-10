class Hobby < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :level, presence: true
  validates :occupancy_limit, presence: true
end
