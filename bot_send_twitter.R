# Create Twitter token
cegauf_token <- rtweet::create_token(
  app = "cegaufbot",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

tweet_text <- "Julen todavia no sabe si quiere hacer una segunda temporada"
# Post the text to Twitter
rtweet::post_tweet(
  status = tweet_text,
  token = cegauf_token
)
