class RemoveCategoriesFromGuide < ActiveRecord::Migration[6.1]
  def change
    remove_reference :guides, :categories, null: false, foreign_key: true
  end
end
