class Drink < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  # validates :image, presence: true
  validates :stock_level, numericality: { greater_than: 0 }
end
