class MainController < ApplicationController
  def index
    # Last 5 search results without repeat
    @recent_searches = RecentSearch.limit(5).order('id desc').group(:isbn)
  end
end
