class AddCategoriesToGuides < ActiveRecord::Migration[6.1]
  def change
    add_reference :guides, :categories, null: false, foreign_key: true
  end
end
