class ReviewsController < ApplicationController

  def search
    @businesses = Business.find_by(business_type: params[:type])
    render json: @businesses
  end

  def show
    @business = Business.find(params[:id])
    binding.pry
    @reviews = @business.reviews

    respond_to do |format|
      format.js do
        render :json => {
          :business => @business,
          :reviews => @reviews
        }
      end
    end
    
  end

end
