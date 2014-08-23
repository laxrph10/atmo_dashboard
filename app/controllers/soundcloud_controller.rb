class SoundcloudController < ApplicationController
  def new
    client = Soundclouduser.login
    redirect_to client.authorize_url() 
  end

  def show
    @brand = Brand.find_by(:id => session[:brand_id])
    if params[:code]
      @brand.soundclouduser.access_token = params[:code]
      @brand.save
      redirect_to brand_path(@brand.id)
    end
  end
end
