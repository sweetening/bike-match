class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :title, :price, :photos, presence: true
  validates :title, uniqueness: true

  CATEGORIES = ["Dutch", "Electric", "Racing", "BMX", "Road", "Mountain", "Tandem", "Cruiser", "Single Speed", "Track"]
end
