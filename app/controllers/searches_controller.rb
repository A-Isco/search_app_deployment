class SearchesController < ApplicationController
  def index
    @most_searched = Search.most_searched
  end

  def user_history
    @searches = current_user.searches.order(updated_at: :desc)
  end
end
