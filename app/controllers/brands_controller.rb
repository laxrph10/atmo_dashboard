class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update]
  respond_to :json

  def index
    @username = Brand.find_by(params:id)
  end

  def show
  end

  def new
    @brand = Brand.new(brand_params)
    if @brand.save
      session[:brand_id] = @brand.id
      redirect_to brand_path
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
    params.require(:brand).permit(:brand_name, :id, :website, :phone_number, :email, :address, :description, :password, :auth_token, :company_name, :company_representative_name)
  end
end
