class BusinessesController < ApplicationController

  def create
    @business = Business.create(business_params)
    @review = @business.reviews.create(review_params)

    respond_to do |format|
      format.json do
        render :json => {
          :business => @business,
          :reviews => @review
        }
      end
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :type, :stings, :buzzes, :phone_number, :zip_code)
  end

  def review_params
    params.require(:review).permit(:business_id, :feedback_type, :relationship_type, :feedback_comment)
  end
end
