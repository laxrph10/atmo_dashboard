class SessionsController < ApplicationController
  def new
    @brand = Brand.find_by_email(params[:email])
    if @brand && @brand.authenticate(params[:password])
      session[:brand_id] = @brand.id
      redirect_to brands_path
    else
      flash.now[:notice] = "Invalid login attempt."
      render "new"
    end
  end

  def destroy
    session[:brand_id] = nil
    redirect_to root_path, notice: "Successfully logged out!"
  end

end
