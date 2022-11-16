class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: %w[chinese italian japanese french belgian], presence: true
end
