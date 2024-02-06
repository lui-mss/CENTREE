class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :user

  geocoded_by :city
  after_validation :geocode, if: ->(obj) { obj.city.present? && obj.city_changed? }
end
