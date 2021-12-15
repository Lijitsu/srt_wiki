class AddFieldsToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :name, :string
    add_column :categories, :rules, :text
    add_column :categories, :overview, :text
    add_column :categories, :platform, :string
  end
end
