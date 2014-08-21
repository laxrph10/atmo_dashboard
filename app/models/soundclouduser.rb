class Soundclouduser < ActiveRecord::Base
  belongs_to :brand 

  def self.login
      SoundCloud.new({
      :client_id     => ENV['SOUNDCLOUND_CLIENT_ID'],
      :client_secret => ENV['SOUNDCLOUND_CLIENT_SECRET'],
      :redirect_uri  => 'http://localhost:3000/brands'
      })
  end
end
