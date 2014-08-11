class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update]
  respond_to :json

  def index
  end

  def show
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
    params.require(:brand).permit(:brand_name, :id, :website, :phone_number, :email, :address, :description)
  end
end
