class Article < ApplicationRecord
  has_many :budgets, dependent: :destroy
  validates :budgetLimit, presence: true, numericality: { only_float: true }
  validates :title, presence: true, uniqueness: true
end
