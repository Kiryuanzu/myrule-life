Rails.application.config.middleware.use OmniAuth::Builder do |variable|
  provider :twitter, ENV['MYRULE_TWITTER_CONSUMER_KEY'], ENV['MYRULE_TWITTER_CONSUMER_SECRET'], callback_url: "http://127.0.0.1:3000/auth/twitter/callback"
end