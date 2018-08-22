class CreateResearches < ActiveRecord::Migration[5.2]
  def change
    create_table :researches do |t|
      t.string :title
      t.text :descr_one
      t.text :descr_two

      t.timestamps
    end
  end
end
