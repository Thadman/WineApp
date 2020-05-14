class WineType < ApplicationRecord
  has_many :listings, dependent: :destroy
end

