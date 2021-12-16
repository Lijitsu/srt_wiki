class AddSeriesToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :series, null: false, foreign_key: true
  end
end
