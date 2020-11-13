class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hobby

  validates :message, presence: true
end
