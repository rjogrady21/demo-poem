class AddBiographyToPoets < ActiveRecord::Migration[5.2]
  def change
    add_column :poets, :biography, :text
  end
end
