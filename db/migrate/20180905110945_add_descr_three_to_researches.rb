class AddDescrThreeToResearches < ActiveRecord::Migration[5.2]
  def change
    add_column :researches, :descr_three, :text
  end
end
