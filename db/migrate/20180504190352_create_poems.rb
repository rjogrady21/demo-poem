class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.string :title
      t.text :body
      t.references :poet, foreign_key: true

      t.timestamps
    end
  end
end
