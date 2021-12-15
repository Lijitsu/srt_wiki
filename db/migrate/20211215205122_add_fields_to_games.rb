class AddFieldsToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :name, :string
    add_column :games, :platform, :string
    add_column :games, :overview, :text
    add_column :games, :release_date, :string
  end
end
