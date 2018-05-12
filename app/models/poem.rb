class Poem < ApplicationRecord
  belongs_to :poet
  has_many :categorisations
  has_many :categories, through: :categorisations
end
