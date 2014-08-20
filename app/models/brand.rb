class Brand < ActiveRecord::Base
  has_one :twitter
  has_one :pinterest 
  has_one :instagram
  has_one :soundcloud
  has_one :vimeo
  validates :user_name, presence: true
  validates :user_name, uniqueness: true

  def accounts
  end

  def authenticate(email)
  end
end
