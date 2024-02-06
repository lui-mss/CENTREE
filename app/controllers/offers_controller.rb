class OffersController < ApplicationController

  def index
    @offers = Offer.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end
end
