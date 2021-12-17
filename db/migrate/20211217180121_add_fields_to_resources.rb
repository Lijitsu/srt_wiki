class AddFieldsToResources < ActiveRecord::Migration[6.1]
  def change
    add_column :resources, :name, :string
    add_column :resources, :description, :text
  end
end
