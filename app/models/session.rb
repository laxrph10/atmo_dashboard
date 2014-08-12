class Session < ActiveRecord::Base

  def log_in
    if authenticate
      #login user
    else
      "You're not a valid user!"
    end
  end
end
