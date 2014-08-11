class Brand < ActiveRecord::Base
  has_many :twitters
  has_many :pinterests 
  has_many :instagrams
  has_many :soundclouds

  def accounts
  end
end
