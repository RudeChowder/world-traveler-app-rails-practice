class Traveler < ApplicationRecord
  has_many :vacations
  has_many :countries, through: :vacations

  def favorite_vacations
    vacations.where(favorite: true)
  end

  def favorite_countries
    favorite_vacations.map(&:country).uniq
  end
end
