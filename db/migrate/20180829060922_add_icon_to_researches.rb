class AddIconToResearches < ActiveRecord::Migration[5.2]
  def change
    add_column :researches, :icon, :string
  end
end
