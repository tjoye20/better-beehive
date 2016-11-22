class ReviewsController < ApplicationController

  def new_search
    get_search_results
  end

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

  private

  def get_search_results
    search = params[:search].split(" ").join("+")
    url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{search}&key=#{ENV["google"]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    binding.pry
  end

  def array_of_results(search_results)



  end 

end
