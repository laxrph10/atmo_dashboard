class PendingUsersController < ApplicationController
  def new
  end

  def create
    @pending_user = PendingUser.new(pending_user_params)
    if @pending_user.save
      flash.now[:notice] = "Thank you for contacting Atmospheir."
      flash.color[:valid]
      redirect_to home_path
    else
      flash.now[:notice] = "Your submission is invalid."
      flash.color[:invalid]
      render "new"    
    end
  end

  private

  def pending_user_params
    params.require(:pending_user).permit(:name, :email, :phone_number, :company, :reason, :message) 
  end
end
