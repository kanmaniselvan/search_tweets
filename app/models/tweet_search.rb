class TweetSearch
  TWITTER_SEARCH_API = 'https://api.twitter.com/1.1/search/tweets.json'

  def initialize(search_query)
    @search_query = search_query
  end

  def search
    response = access_token.get("#{TWITTER_SEARCH_API}?q=#{@search_query}")
    JSON.parse(response.body)['statuses']
  end

  private
  def consumer
    @consumer ||= OAuth::Consumer.new(ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET'])
  end

  def access_token
    @access_token = OAuth::AccessToken.new(consumer, ENV['ACCESS_TOKEN'], ENV['ACCESS_TOKEN_SECRET'])
  end
end
