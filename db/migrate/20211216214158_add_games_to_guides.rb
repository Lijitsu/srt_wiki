class AddGamesToGuides < ActiveRecord::Migration[6.1]
  def change
    add_reference :guides, :games, null: false, foreign_key: true
  end
end
