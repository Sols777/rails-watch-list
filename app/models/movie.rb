class Movie < ApplicationRecord
  has_many :bookmarks
  # validates
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
