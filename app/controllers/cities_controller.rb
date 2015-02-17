class CitiesController < ApplicationController
  def index
    #@cities = City.all
	@cities = City.all
	@cities = City.paginate(:page => params[:page], :per_page => 2)
  end

end
