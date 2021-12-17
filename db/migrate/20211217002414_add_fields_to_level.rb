class AddFieldsToLevel < ActiveRecord::Migration[6.1]
  def change
    add_column :levels, :name, :string
    add_column :levels, :description, :text
  end
end
