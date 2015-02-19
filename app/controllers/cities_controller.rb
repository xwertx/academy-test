class CitiesController < ApplicationController

  def index

	@cities = City.all
	@cities = City.paginate(:page => params[:page], :per_page => 2)
  
  end

  def show
    @city = City.find(params[:id])
  end

  def new
	@city = City.new({:cities_name => "Default"})  	
  end

  def create
  	@city = City.new(city_params)
    if @city.save
      redirect_to(:action => 'index')
    else
      render('new')
    end  	 
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(city_params)
      redirect_to(:action => 'show', :id => @city.id)
    else
      render('edit')
    end
  end

  def delete
  	@city = City.find(params[:id])
  end

  def destroy
  	city = City.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

    private

    def city_params
      params.require(:city).permit(:cities_name, :short_name)
    end

end
