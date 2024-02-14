class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  def index
    @category = Category.find(params[:category_id]) if params[:category_id]
    @offers = Offer.all
    if params[:city].present?
      @offers = Offer.where(city: params[:city], category: @category)
    elsif params[:country].present?
      @offers = Offer.where(country: params[:country], category: @category)
    else
      @offers = Offer.where(category: @category)
    end
  end

  def show
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
