class Album < ApplicationRecord
  belongs_to :artist
  has_many :shows, dependent: :destroy

  validates :title, presence: true
  validates :year, numericality: true
  validates :year, length: { maximum: 4}

end
