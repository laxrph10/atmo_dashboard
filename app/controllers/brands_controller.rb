class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :index]
  respond_to :json

  def index
    
  end

  def brand_feed
    @brand = Brand.find_by(:id => session[:brand_id])
    twitter_client = Twittuser.authenticate
    @tweets = twitter_client.user_timeline("#{@brand.twittuser.twitter_username}")

    #client = SoundCloud.new(:access_token => @brand.soundclouduser.access_token)
    #@username = client.get('/me').username
    #@playlist = client.get("/me/playlists").first
  end

  def show
  end
    
  def new
    @brand = Brand.new
  end

  def create
    atmospheir_client = AtmospheirClient.new(params[:user_name], params[:one_time_passcode], params[:password])
    if atmospheir_client.validate
      redirect_to root_path
      flash.now[:notice] = "Your account has been created."
    else
      flash.now[:notice] = "Your submission is invalid."
      render "new"
    end
  end

  def edit
  end

  def update
    @brand.update(brand_params)
    respond_to do |format|
      format.js
    end
  end

  private
  
  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:brand_name, :id, :website, :phone, :email, :address, :description, :password, :secret_code, :company_name, :company_representative_name)
  end
end
