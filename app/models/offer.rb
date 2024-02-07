class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :user

  geocoded_by :city
  after_validation :geocode, if: ->(obj) { obj.city.present? && obj.city_changed? }
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :upvotes, numericality: { greater_or_equal_to: 0 }
  validates :country, presence: true
  validates :city, presence: true
end
