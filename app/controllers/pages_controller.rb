class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @offers = set_offers(params)
    @categories = Category.all
    @icons = [
      "<i class=\"fa-solid fa-person-shelter\"></i>",
      "<i class=\"fa-solid fa-hospital\"></i>",
      "<i class=\"fa-solid fa-scale-balanced\"></i>",
      "<i class=\"fa-solid fa-graduation-cap\"></i>",
      "<i class=\"fa-solid fa-briefcase\"></i>"
    ]
    # The `geocoded` scope filters only flats with coordinates
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {offer: offer}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  private

  def set_offers(params)
    if params[:category_id].nil?
      Offer.all
    else
      Offer.where(category_id: params[:category_id])
    end
  end
end
