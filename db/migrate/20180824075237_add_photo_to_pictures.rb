class AddPhotoToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :photo, :string
  end
end
