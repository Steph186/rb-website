class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.string :photo
      t.boolean :display_picture, default: false, null: true

      t.timestamps
    end
  end
end
