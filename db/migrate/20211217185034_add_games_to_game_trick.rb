class AddGamesToGameTrick < ActiveRecord::Migration[6.1]
  def change
    add_reference :game_tricks, :game, null: false, foreign_key: true
    add_reference :game_tricks, :trick, null: false, foreign_key: true
  end
end
