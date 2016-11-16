class Show < ApplicationRecord
  belongs_to :album

  validates :title, presence: true
  validates :year, numericality: true
  validates :year, length: { maximum: 4}
end
