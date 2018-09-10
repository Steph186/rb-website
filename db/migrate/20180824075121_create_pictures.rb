class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :page
      t.string :photo, default: "https://res.cloudinary.com/did3jv3n4/image/upload/v1536484400/lql1ubpihdhyusf06lai.jpg", null: false
      t.string :focus_picture, default: '0%', null: false

      t.timestamps
    end
  end
end
