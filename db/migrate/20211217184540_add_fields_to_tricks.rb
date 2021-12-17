class AddFieldsToTricks < ActiveRecord::Migration[6.1]
  def change
    add_column :tricks, :name, :string
    add_column :tricks, :game_version, :string
    add_column :tricks, :discoverer, :string
    add_column :tricks, :description, :text
    add_column :tricks, :platform, :string
  end
end
