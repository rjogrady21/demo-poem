class CreateCategoriesAndPoems < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_poems, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :poem, index: true
    end
  end
end
