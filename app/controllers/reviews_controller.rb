class ReviewsController < ApplicationController

  def search
    if params[:search]
      search = params[:search].split(" ").join("+")
    end 
    businesses_by_type = Business.where(business_type: params[:type])
    respond_to do |format|
      format.json do
        render :json => {
          search_by_type: businesses_by_type,
          search_by_input: get_search_results(search).zip(get_phone_number(search))
        }
      end

    end
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

  def get_search_results(search)
    url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{search}&key=#{ENV["google"]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    array_of_results = []
    data["results"].each { |arr| array_of_results << arr["formatted_address"] }
    array_of_results
  end

  def get_phone_number(search)
    url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{search}&key=#{ENV["google"]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    place_id_array = []
    phone_number_array = []
    data["results"].each { |arr| place_id_array << arr["place_id"] }
    place_id_array.each do |place_id|
      url = "https://maps.googleapis.com/maps/api/place/details/json?placeid=#{place_id}&key=#{ENV["google"]}"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      data = JSON.parse(response)
      phone_number_array << data["result"]["formatted_phone_number"]
    end
    phone_number_array
  end


end
