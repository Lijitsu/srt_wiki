class CreateGameTricks < ActiveRecord::Migration[6.1]
  def change
    create_table :game_tricks do |t|

      t.timestamps
    end
  end
end
