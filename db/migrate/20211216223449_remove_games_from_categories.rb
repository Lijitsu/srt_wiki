class RemoveGamesFromCategories < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :games, null: false, foreign_key: true
  end
end
