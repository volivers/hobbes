class Hobby < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_title_description_and_category,
    against: [ :title, :description, :category ],
    using: {
      tsearch: { prefix: true }
    }

  validates :title, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :occupancy_limit, presence: true
end
