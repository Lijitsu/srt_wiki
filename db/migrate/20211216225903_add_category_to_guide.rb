class AddCategoryToGuide < ActiveRecord::Migration[6.1]
  def change
    add_reference :guides, :category, null: false, foreign_key: true
  end
end
