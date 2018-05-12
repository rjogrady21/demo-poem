class CreateCategorisations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorisations do |t|
      t.references :poem, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
