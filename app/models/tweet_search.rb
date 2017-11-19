class TweetSearch
  def initialize(search_query)
    @search_query = search_query
  end

  def search
    # Stubbing to return sample tweets for now
    [{tweet: 'Tweet 1'}, {tweet: 'Tweet 2'}, {tweet: 'Tweet 3'}]
  end
end
