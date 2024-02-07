class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
    @icons = [
      "<i class=\"fa-solid fa-person-shelter\"></i>",
      "<i class=\"fa-solid fa-hospital\"></i>",
      "<i class=\"fa-solid fa-scale-balanced\"></i>",
      "<i class=\"fa-solid fa-graduation-cap\"></i>",
      "<i class=\"fa-solid fa-briefcase\"></i>"
    ]
    if params[:country].present?
      @cities = Offer.where(country: params[:country]).distinct.pluck(:city)
      #@categories = Category.joins(:offers).where(offers: { country: params[:country] }) #This takes away categories that do not have the selected city.
    else
      @cities = Offer.all.distinct.pluck(:city)
    end
  end
end
