class Categorisation < ApplicationRecord
  belongs_to :poem
  belongs_to :category
end
