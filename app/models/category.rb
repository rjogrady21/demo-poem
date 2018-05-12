class Category < ApplicationRecord
  has_many :categorisations
  has_many :poems, through: :categorisations
end
