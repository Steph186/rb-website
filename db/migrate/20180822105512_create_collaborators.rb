class CreateCollaborators < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborators do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :avatar
      t.text :description_one
      t.text :description_two
      t.string :photo
      t.boolean :alumni, default: false, null: false
      t.string :current_position

      t.timestamps
    end
  end
end
