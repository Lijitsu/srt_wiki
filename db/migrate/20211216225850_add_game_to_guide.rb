class AddGameToGuide < ActiveRecord::Migration[6.1]
  def change
    add_reference :guides, :game, null: false, foreign_key: true
  end
end
