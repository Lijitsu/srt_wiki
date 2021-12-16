class AddSeriesToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :series, null: false, foreign_key: true
  end
end
