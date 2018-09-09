class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :page
      t.string :photo, default: "https://picsum.photos/200/300", null: false
      t.string :focus_picture, default: '0%', null: false

      t.timestamps
    end
  end
end
