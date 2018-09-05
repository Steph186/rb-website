class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :page
      t.string :photo

      t.timestamps
    end
  end
end
