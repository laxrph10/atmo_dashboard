require 'gibberish'

class AtmospheirClient
  URL = "https://dev.atmospheir.com/ent/EntAuthenticateCredentials.php"
  attr_reader :user_name, :one_time_passcode, :password

  def initialize(user_name, one_time_passcode, password)
    @user_name = user_name
    @one_time_passcode = one_time_passcode
    @password = password
  end  

  def validate
    #timestamp = Time.now
    hmac_string = Gibberish::HMAC('TckU8jYw924j7KdwpCE6OtmQWQSaa9JL9Lxc9Zehx87zo8GDNVCKYD1idPBafZzn', @one_time_passcode, :digest => :sha256)
    response = RestClient.post(URL, {:oneTimePassword => @one_time_passcode, :hmac => hmac_string, :id => @user_name,  :password => @password}.to_json)
    parsed_response = JSON.parse(response)
    if parsed_response["success"]
      brand = Brand.new({:user_name => @user_name, :auth_token => parsed_response["authToken"]})
      brand.save
    else 
      false
    end
  end
end
