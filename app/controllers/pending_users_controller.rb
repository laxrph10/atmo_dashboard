class PendingUsersController < ApplicationController
  def new
    @pending_user = PendingUser.new
  end

  def create
    @pending_user = PendingUser.new(pending_user_params)
    if @pending_user.save
      redirect_to root_path, notice: "Thank you for your interest."
    else
      flash.now[:notice] = "Your submission is invalid."
      render "new"    
    end
  end

  private

  def pending_user_params
    params.require(:pending_user).permit(:authenticity_token, :name, :email, :phone, :company_name, :reason, :message) 
  end
end
