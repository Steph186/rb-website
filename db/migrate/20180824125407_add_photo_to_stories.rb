class AddPhotoToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :photo, :string
  end
end
