class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hobby

  validates :time_slot, presence: true
end
