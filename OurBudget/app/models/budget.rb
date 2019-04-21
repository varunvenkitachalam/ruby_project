class Budget < ApplicationRecord
  belongs_to :article
  validates :newLimit, presence: true, numericality: { only_float: true }
end
