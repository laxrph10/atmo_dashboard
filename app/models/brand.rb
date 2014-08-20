class Brand < ActiveRecord::Base
  has_many :twitters
  has_many :pinterests 
  has_many :instagrams
  has_many :soundclouds
  has_many :vimeos

  def accounts
  end

  def authenticate(email)
  end
end
