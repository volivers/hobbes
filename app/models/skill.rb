class Skill < ApplicationRecord
  belongs_to :user

  validates :category, presence: true
  validates :experience, presence: true
end
