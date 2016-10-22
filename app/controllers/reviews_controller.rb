class ReviewsController < ApplicationController

  def search
    @businesses = Business.find_by(business_type: params[:type])
    render json: @businesses
  end

  def show
    @business = Business.find(params[:id])
    @reviews = @businesses.reviews
    
    render json: @business, @reviews
  end

end
