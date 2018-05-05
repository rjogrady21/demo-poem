class AddYearOfBirthToPoets < ActiveRecord::Migration[5.2]
  def change
    add_column :poets, :year_of_birth, :integer
  end
end
