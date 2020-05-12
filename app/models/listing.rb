class Listing < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :region, presence: true
  validates :grape, presence: true
  validates :vintage, presence: true
  validates :notes, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :alcohol, presence: true
  validates :wine_type, presence: true
  belongs_to :user
  has_many :grape_listings
  has_many :grapes, through: :grape_listings 
end

