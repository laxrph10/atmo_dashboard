class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :index]
  respond_to :json

  def index
  end

  def show
    binding.pry
  end

  def new
    @brand = Brand.new
  end

  def create
    atmospheir_client = AtmospheirClient.new(params[:user_name], params[:one_time_passcode], params[:password])
    if @brand = atmospheir_client.validate
      brand = Brand.find_by user_name: atmospheir_client.user_name
      session[:brand_id] = brand.id
      redirect_to brand_path(session[:brand_id])
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
