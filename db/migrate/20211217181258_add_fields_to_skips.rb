class AddFieldsToSkips < ActiveRecord::Migration[6.1]
  def change
    add_column :skips, :name, :string
    add_column :skips, :game_version, :string
    add_column :skips, :discoverer, :string
    add_column :skips, :description, :text
    add_column :skips, :platform, :string
  end
end
