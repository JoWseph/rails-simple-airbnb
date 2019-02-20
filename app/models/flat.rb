class Flat < ApplicationRecord
  validates :name, presence: true
  validates :price_per_night, presence: true, numericality: :only_integer, inclusion: { in: (0..1500) }
  validates :address, presence: true
  validates :number_of_guests, presence: true, numericality: :only_integer
end
