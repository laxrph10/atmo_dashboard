Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :instagram, ENV['f924b30e8ea849618d110275308306f3'], ENV['1b50bc12ff8d4571b2adb930f127cc6a'],
  provider :soundcloud, ENV['527aa007668d6c7a500d574126ee8904'], ENV['c16493ab78bf5e601de8b6dc8f2216f3'],
  provider :vimeo, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
