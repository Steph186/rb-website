class AddPhotoToCollaborators < ActiveRecord::Migration[5.2]
  def change
    add_column :collaborators, :photo, :string
  end
end
