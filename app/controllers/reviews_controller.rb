class ReviewsController < ApplicationController

  def search
    @businesses = Business.where(business_type: params[:type])
    render json: @businesses
  end

  def show
    @business = Business.find(params[:id])
    @reviews = @business.reviews

    respond_to do |format|
      format.json do
        render :json => {
          :business => @business,
          :reviews => @reviews
        }
      end
    end

  end

end
