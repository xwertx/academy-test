class RegistrationsController < Devise::RegistrationsController

	def new
		@cities = City.all
	end

	def edit
		@cities = City.all
	end
 
  private
 
  def sign_up_params
    params.require(:user).permit(:name, :age, :city_id, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:name, :age, :city_id, :email, :password, :password_confirmation, :current_password)
  end
end