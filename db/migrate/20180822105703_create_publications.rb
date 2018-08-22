class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :authors
      t.datetime :year
      t.string :title
      t.string :journal

      t.timestamps
    end
  end
end
