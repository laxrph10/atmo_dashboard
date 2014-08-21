class Brand < ActiveRecord::Base
  has_one :twittuser
  has_one :pinuser 
  has_one :instauser
  has_one :soundclouduser
  has_one :vimeouser
  validates :user_name, presence: true
  validates :user_name, uniqueness: true

  def accounts
  end

  def authenticate(email)
  end
end
