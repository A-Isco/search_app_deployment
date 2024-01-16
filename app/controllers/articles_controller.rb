class ArticlesController < ApplicationController
  def index
    @articles = filtered_articles
  end

  private

  def filtered_articles
    if params[:search].present?
      Search.create_or_update_search(current_user, params[:search])
      Article.by_title(params[:search])
    else
      Article.all
    end
  end
end
