class AddGameToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :game, null: false, foreign_key: true
  end
end
