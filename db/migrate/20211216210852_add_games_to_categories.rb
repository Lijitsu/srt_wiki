class AddGamesToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :games, null: false, foreign_key: true
  end
end
