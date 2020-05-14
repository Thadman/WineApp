class Grape < ApplicationRecord
  has_many :grape_listings, dependent: :destroy
end
