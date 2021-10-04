class Country < ApplicationRecord
  has_many :vacations
  has_many :travelers, through: :vacations
end
