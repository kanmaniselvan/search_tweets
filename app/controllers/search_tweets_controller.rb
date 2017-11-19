class SearchTweetsController < ApplicationController
  def index
    search_query = params[:q]

    # Handle if the parameter is not present or has just empty strings.
    if search_query.to_s.gsub(/[\'\" ]/, '').blank?
      @results = []
    else
      @results = TweetSearch.new(search_query).search
    end
  end
end
