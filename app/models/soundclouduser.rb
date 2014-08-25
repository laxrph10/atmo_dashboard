class Soundclouduser < ActiveRecord::Base
  belongs_to :brand 

  def self.login
    client = SoundCloud.new({
      :client_id     => ENV['SOUNDCLOUD_CLIENT_ID'],
      :client_secret => ENV['SOUNDCLOUD_CLIENT_SECRET'],
      :redirect_uri  => 'http://localhost:3000/soundcloud/show'
      })
  end

  # TODO create a method to update the SC access token.
  # def self.refresh 
  #   client = Soundcloud.new(:client_id     => ENV['SOUNDCLOUND_CLIENT_ID'],
  #                           :client_secret => ENV['SOUNDCLOUND_CLIENT_SECRET'],
  #                           :refresh_token => 'SOME_REFRESH_TOKEN')
  # end
end
