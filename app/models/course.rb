class Course < ApplicationRecord
  has_rich_text :description

  validates :title, :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 99, less_than_or_equal_to: 5000, message: "must be between 100 and 5000" }
  belongs_to :user
end
