class Poem < ApplicationRecord
  belongs_to :poet
  has_and_belongs_to_many :categories
end
