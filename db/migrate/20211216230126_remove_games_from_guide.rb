class RemoveGamesFromGuide < ActiveRecord::Migration[6.1]
  def change
    remove_reference :guides, :games, null: false, foreign_key: true
  end
end
