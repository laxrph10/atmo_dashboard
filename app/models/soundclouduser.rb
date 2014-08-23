class Soundclouduser < ActiveRecord::Base
  belongs_to :brand 

  def self.login
    client = SoundCloud.new({
      :client_id     => ENV['SOUNDCLOUND_CLIENT_ID'],
      :client_secret => ENV['SOUNDCLOUND_CLIENT_SECRET'],
      :redirect_uri  => 'http://localhost:3000/soundcloud/show'
      })
  end

  def self.refresh 
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUND_CLIENT_ID'],
                        :client_secret => ENV['SOUNDCLOUND_CLIENT_SECRET'],
                        :refresh_token => 'SOME_REFRESH_TOKEN')
  end
end
