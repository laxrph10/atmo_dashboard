class PendingUser < ActiveRecord::Base
  validates_presence_of   :email, :company_name
  validates_formatting_of :email, :using => :email
  validates_uniqueness_of :email
  validates_formatting_of :phone, :using => :us_phone
end
