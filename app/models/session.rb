class Session < ActiveRecord::Base

  def authenticate(password)
    response = RestClient(http://dev.atmospheir, user_name, password)

    if response
      true
      goodtogo#take the params returned and update the auth_token in the database
    else 
      false
      "error, you couldn't log in!"
    end
  end

  def log_in
    if authenticate
      #login user
    else
      "You're not a valid user!"
    end
  end
end
