class AddCurrentPositionToCollaborators < ActiveRecord::Migration[5.2]
  def change
    add_column :collaborators, :current_position, :string
  end
end
