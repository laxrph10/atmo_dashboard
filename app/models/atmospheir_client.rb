class AtmospheirClient
  URL = "http://dev.atmospheir.com"
  attr_reader :email, :secret_code

  def initialize(email, secret_code)
    @email = email
    @secret_code = secret_code
  end

  def validate
    timestamp = Time.now
    hmac_string = Gibberish::HMAC(ENV["key"], secret_code + timestamp.to_s, :digest => :sha256)
    response = RestClient.post(URL, {:hmac => hmac_string, :id => email, :password => secret_code, :timestamp => timestamp})
    parsed_response = JSON.parse(response)
    if parsed_response["success"]
      brand = Brand.new({:email => email, :auth_token => parsed_response["auth_token"]})
      brand.save
    else 
      false
    end
  end
end
