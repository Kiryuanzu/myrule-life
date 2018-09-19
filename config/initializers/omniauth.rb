Rails.application.config.middleware.use OmniAuth::Builder do |variable|
  provider :twitter, ENV['MYRULE_TWITTER_CONSUMER_KEY'], ENV['MYRULE_TWITTER_CONSUMER_SECRET']
end