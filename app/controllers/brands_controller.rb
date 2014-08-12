class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update]
  respond_to :json

  def index
    @brand = Brand.find(params[:email])
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def create
    atmospheir_client = AtmospheirClient.new(params[:email], params[:secret_code])
    if @brand = atmospheir_client.validate
      session[:brand_id] = @brand.id
      redirect_to edit_brand_path
    else
      flash.now[:notice] = "Your submission is invalid."
      render "new"
    end
  end

  def edit
    @brand = Brand.find(params[:id])
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
    params.require(:brand).permit(:brand_name, :id, :website, :phone_number, :email, :address, :description, :password, :secret_code, :company_name, :company_representative_name)
  end
end
