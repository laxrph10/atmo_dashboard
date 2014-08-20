class Brand < ActiveRecord::Base
  has_one :twitter
  has_one :pinterest 
  has_one :instagram
  has_one :soundcloud
  has_one :vimeo

  def accounts
  end

  def authenticate(email)
  end
end
