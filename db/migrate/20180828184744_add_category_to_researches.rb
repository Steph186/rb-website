class AddCategoryToResearches < ActiveRecord::Migration[5.2]
  def change
    add_column :researches, :category, :string
  end
end
