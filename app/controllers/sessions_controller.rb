class SessionsController < ApplicationController
  def new
    atmospheir_client = AtmospheirClient.new(params[:user_name], params[:one_time_passcode], params[:password])
    if atmospheir_client.validate
      flash.now[:notice] = "Your account has been created."
      render "new"
    else
      flash.now[:notice] = "Your submission is invalid."
      render "new"
    end
  end
  
  def create
    brand = Brand.find_by(:user_name => params[:username])
    binding.pry
    if brand && brand.authenticate(params[:password])
      session[:brand_id] = brand.id
      redirect_to brand_path(brand)
    else
      flash[:notice] = "Invalid login attempt."
      render :new
    end
  end

  def destroy
    session[:brand_id] = nil
    redirect_to root_path, notice: "Successfully logged out!"
  end
end
