class Search < ApplicationRecord
  ###################### validations ######################
  validates :query, presence: true

  ###################### associations ######################
  belongs_to :user

  ###################### hooks ######################
  after_commit :broadcast_most_searched_update

  ###################### scopes ######################
  scope :most_searched, lambda {
    select('query, COUNT(*) as count')
      .group(:query)
      .order(Arel.sql('COUNT(*) DESC'))
      .limit(10)
  }

  ###################### methods ######################
  def self.create_or_update_search(user, query)
    extend SearchHelper

    sanitized_current_query = sanitize_and_downcase_query(query)
    last_search = user.searches.order(created_at: :desc).first
    sanitized_last_search = sanitize_and_downcase_query(last_search&.query)

    if last_search.present? && similar_query?(sanitized_last_search, sanitized_current_query)
      last_search.update(query: query)
    else
      user.searches.create(query: query)
    end
  end

  private

  def broadcast_most_searched_update
    Turbo::StreamsChannel.broadcast_update_to(
      'most_searched',
      target: 'most_searched',
      partial: 'searches/search',
      locals: { searches: self.class.most_searched }
    )
  end
end