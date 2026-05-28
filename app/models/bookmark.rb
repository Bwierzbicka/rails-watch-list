class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie, dependent: :destroy

  validates_associated :list, :movie
  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
end
