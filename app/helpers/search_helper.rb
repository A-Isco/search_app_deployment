module SearchHelper
  include AppConstants

  def similar_query?(string_a, string_b)
    JaroWinkler.distance(string_a, string_b, ignore_case: true) >= AppConstants::SIMILARITY_THRESHOLD
  end

  def sanitize_and_downcase_query(query)
    query&.delete(' ')&.downcase
  end
end
