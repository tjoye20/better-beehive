class BusinessesController < ApplicationController

  def create
    Business.create(business_params)
    Review.create(review_params)
  end

  private

  def business_params
    params.require(:business).permit(:name, :type, :stings, :buzzes, :phone_number :zip_code)
  end

  def review_params
    params.require(:review).permit(:business_id, :feedback_type, :relationship_type, :feedback_comment)
  end
end
