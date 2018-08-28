class AddAlumniToCollaborators < ActiveRecord::Migration[5.2]
  def change
    add_column :collaborators, :alumni, :boolean, default: false, null: false
  end
end
