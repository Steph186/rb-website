class AddUrlToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :url, :string
  end
end
