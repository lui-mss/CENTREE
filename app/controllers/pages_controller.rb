class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us ]

  def about_us
  end

  def home
    @offers = Offer.all
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
end
