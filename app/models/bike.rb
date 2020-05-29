class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many_attached :photos
  validates :title, :price, :photos, presence: true
  validates :title, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ["Dutch", "Electric", "Racing", "BMX", "Road", "Mountain", "Tandem", "Cruiser", "Single Speed", "Track"]
end
