class AddFieldsToGuides < ActiveRecord::Migration[6.1]
  def change
    add_column :guides, :name, :string
    add_column :guides, :revision, :string
    add_column :guides, :game_version, :string
    add_column :guides, :creator, :string
    add_column :guides, :content, :text
  end
end
