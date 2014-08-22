class SoundcloudController < ApplicationController
  def new
    client = Soundclouduser.login
    redirect_to client.authorize_url() 
  end

  def show
    @brand
    if code = params[:code]
      brand = @brand
      brand.soundclouduser.access_token = params[:code]
      redirect_to brands_path(@brand.id)
    end
  end
end
