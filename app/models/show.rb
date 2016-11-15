class Show < ApplicationRecord
  belongs_to :album
  has_many :showlists
  has_many :users, through: :showlists
end
