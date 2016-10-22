class ReviewsController < ApplicationController

  def search
    @businesses = Business.find_by(type: params.type)
    render json: @businesses
  end

  def show
    @business = Business.find(params(id))
    render json :@business
  end

end
