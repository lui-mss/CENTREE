class OffersController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @offers = Offer.all
    if params[:query].present?
      @offers = @offers.where(city: params[:query])
    else
      @offers = Offer.all
    end
  end
end
