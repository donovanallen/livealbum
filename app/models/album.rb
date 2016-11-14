class Album < ApplicationRecord
  belongs_to :artist
  has_many :shows, dependent: :destroy
end
