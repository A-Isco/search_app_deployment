class Article < ApplicationRecord
  ###################### validations ######################
  validates :title, presence: true
  validates :content, presence: true

  ###################### scopes ######################
  scope :by_title, ->(search) { where("title LIKE ?", "%#{search}%") }
end
