class CreateResearches < ActiveRecord::Migration[5.2]
  def change
    create_table :researches do |t|
      t.string :title
      t.text :descr_one
      t.text :descr_two
      t.text :descr_three
      t.string :category
      t.string :icon

      t.timestamps
    end
  end
end
