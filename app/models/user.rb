class User < ApplicationRecord
  ###### validations ######
  validates :ip_address, presence: true, uniqueness: true

  ###### associations ######
  has_many :searches, dependent: :nullify
end
