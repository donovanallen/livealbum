class Showlist < ApplicationRecord
  belongs_to :user
  belongs_to :show, optional: true
end
