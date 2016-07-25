require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = ENV['TWITTER_KEY']
  config.consumer_secret    = ENV['TWITTER_SECRET']
  config.oauth_token        = ENV['TOKEN_KEY']
  config.oauth_token_secret = ENV['TOKEN_SECRET']
  config.auth_method        = :oauth
end
