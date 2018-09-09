class CreateLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :labs do |t|
      t.string :title
      t.string :university
      t.string :adress
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
