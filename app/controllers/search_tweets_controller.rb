class SearchTweetsController < ApplicationController
  def index
    @results = TweetSearch.new(params[:q]).search
  end
end
