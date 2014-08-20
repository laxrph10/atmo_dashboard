class AtmospheirClient
  URL = "https://dev.atmospheir.com/ent/EntAuthenticateCredentials.php"
  attr_reader :user_name, :secret_code, :password

  def initialize(user_name, secret_code, password)
    @user_name = user_name
    @secret_code = secret_code
    @password = password
  end

  def validate
    #timestamp = Time.now
    hmac_string = Gibberish::HMAC(ENV["key"], @secret_code, :digest => :sha256)
    response = RestClient.post(URL, {:oneTimePassword => @secret_code, :hmac => hmac_string, :id => @user_name,  :password => @password})
    parsed_response = JSON.parse(response)
    if parsed_response["success"]
      brand = Brand.new({:user_name => @user_name, :auth_token => parsed_response["auth_token"]})
      brand.save
    else 
      false
    end
  end
end
